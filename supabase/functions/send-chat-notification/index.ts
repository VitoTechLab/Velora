import { serve } from "https://deno.land/std@0.168.0/http/server.ts"
import { createClient } from "https://esm.sh/@supabase/supabase-js@2"

serve(async (req) => {
  try {
    // --- Parse body ---
    const { receiverId, message, senderName, chatId } = await req.json()

    // --- Init Supabase (SERVICE ROLE) ---
    const supabase = createClient(
      Deno.env.get("SUPABASE_URL")!,
      Deno.env.get("SUPABASE_SERVICE_ROLE_KEY")!
    )

    // --- Get user FCM tokens ---
    const { data: devices, error } = await supabase
      .from("user_devices")
      .select("fcm_token")
      .eq("user_id", receiverId)

    if (error || !devices || devices.length === 0) {
      return new Response(
        JSON.stringify({ message: "No FCM token found" }),
        { status: 200 }
      )
    }

    // --- Send FCM to each device ---
    for (const device of devices) {
      await fetch("https://fcm.googleapis.com/fcm/send", {
        method: "POST",
        headers: {
          "Authorization": `key=${Deno.env.get("FCM_SERVER_KEY")}`,
          "Content-Type": "application/json",
        },
        body: JSON.stringify({
          to: device.fcm_token,
          priority: "high",
          data: {
            type: "chat",
            senderName,
            message,
            chatId,
          },
        }),
      })
    }

    return new Response(
      JSON.stringify({ success: true }),
      { status: 200 }
    )

  } catch (err) {
    return new Response(
      JSON.stringify({ error: err.message }),
      { status: 500 }
    )
  }
})
