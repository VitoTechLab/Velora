import { serve } from "https://deno.land/std@0.168.0/http/server.ts"
import { createClient } from "https://esm.sh/@supabase/supabase-js@2"

interface NotificationPayload {
  userId: string
  type: 'chat_message' | 'post_like' | 'post_comment' | 'comment_reply' | 'follow' | 'mention' | 'group_invite' | 'call' | 'system' | 'new_post'
  title: string
  body: string
  data?: Record<string, any>
  imageUrl?: string
  priority?: 'high' | 'normal'
}

interface FCMMessage {
  to: string
  priority: string
  notification: {
    title: string
    body: string
    image?: string
    sound?: string
    badge?: string
  }
  data: Record<string, string>
  android?: {
    priority: string
    notification: {
      sound: string
      channel_id: string
    }
  }
  apns?: {
    payload: {
      aps: {
        sound: string
        badge: number
      }
    }
  }
}

serve(async (req) => {
  try {
    const payload: NotificationPayload = await req.json()
    const { userId, type, title, body, data = {}, imageUrl, priority = 'high' } = payload

    // --- Init Supabase (SERVICE ROLE) ---
    const supabase = createClient(
      Deno.env.get("SUPABASE_URL")!,
      Deno.env.get("SUPABASE_SERVICE_ROLE_KEY")!
    )

    // --- Check if user should receive notification ---
    const { data: shouldSend, error: checkError } = await supabase
      .rpc('should_send_notification', {
        p_user_id: userId,
        p_notification_type: type
      })

    if (checkError) {
      console.error('Error checking notification preferences:', checkError)
    }

    if (!shouldSend) {
      return new Response(
        JSON.stringify({ 
          message: 'Notification blocked by user preferences',
          userId,
          type 
        }),
        { status: 200, headers: { "Content-Type": "application/json" } }
      )
    }

    // --- Get active user devices ---
    const { data: devices, error: devicesError } = await supabase
      .from("user_devices")
      .select("fcm_token, platform")
      .eq("user_id", userId)
      .eq("is_active", true)
      .gt("last_seen_at", new Date(Date.now() - 30 * 24 * 60 * 60 * 1000).toISOString())

    if (devicesError) {
      console.error('Error fetching devices:', devicesError)
      return new Response(
        JSON.stringify({ error: 'Failed to fetch devices' }),
        { status: 500, headers: { "Content-Type": "application/json" } }
      )
    }

    if (!devices || devices.length === 0) {
      return new Response(
        JSON.stringify({ 
          message: 'No active devices found',
          userId 
        }),
        { status: 200, headers: { "Content-Type": "application/json" } }
      )
    }

    // --- Prepare FCM messages ---
    const fcmServerKey = Deno.env.get("FCM_SERVER_KEY")
    if (!fcmServerKey) {
      return new Response(
        JSON.stringify({ error: 'FCM_SERVER_KEY not configured' }),
        { status: 500, headers: { "Content-Type": "application/json" } }
      )
    }

    // --- Send FCM to each device ---
    const results = await Promise.allSettled(
      devices.map(async (device) => {
        const fcmMessage: FCMMessage = {
          to: device.fcm_token,
          priority: priority,
          notification: {
            title: title,
            body: body,
            sound: 'default',
            badge: '1'
          },
          data: {
            type: type,
            ...Object.entries(data).reduce((acc, [key, value]) => {
              acc[key] = String(value)
              return acc
            }, {} as Record<string, string>)
          }
        }

        // Add image if provided
        if (imageUrl) {
          fcmMessage.notification.image = imageUrl
        }

        // Platform-specific configuration
        if (device.platform === 'android') {
          fcmMessage.android = {
            priority: priority === 'high' ? 'high' : 'normal',
            notification: {
              sound: 'default',
              channel_id: type === 'chat_message' ? 'chat_messages' : 'app_notifications'
            }
          }
        } else if (device.platform === 'ios') {
          fcmMessage.apns = {
            payload: {
              aps: {
                sound: 'default',
                badge: 1
              }
            }
          }
        }

        const response = await fetch("https://fcm.googleapis.com/fcm/send", {
          method: "POST",
          headers: {
            "Authorization": `key=${fcmServerKey}`,
            "Content-Type": "application/json",
          },
          body: JSON.stringify(fcmMessage),
        })

        const result = await response.json()
        
        // Handle invalid tokens
        if (!response.ok || result.failure === 1) {
          if (result.results?.[0]?.error === 'NotRegistered' || 
              result.results?.[0]?.error === 'InvalidRegistration') {
            // Deactivate invalid token
            await supabase
              .from('user_devices')
              .update({ is_active: false })
              .eq('fcm_token', device.fcm_token)
          }
        }

        return { success: response.ok, device: device.platform, result }
      })
    )

    // --- Save to notification history ---
    await supabase
      .from('notification_history')
      .insert({
        user_id: userId,
        notification_type: type,
        title: title,
        body: body,
        data: data
      })

    // --- Count successes ---
    const successCount = results.filter(r => r.status === 'fulfilled').length
    const failureCount = results.filter(r => r.status === 'rejected').length

    return new Response(
      JSON.stringify({ 
        success: true,
        sent: successCount,
        failed: failureCount,
        total: devices.length
      }),
      { status: 200, headers: { "Content-Type": "application/json" } }
    )

  } catch (err) {
    console.error('Notification error:', err)
    return new Response(
      JSON.stringify({ 
        error: err instanceof Error ? err.message : 'Unknown error'
      }),
      { status: 500, headers: { "Content-Type": "application/json" } }
    )
  }
})
