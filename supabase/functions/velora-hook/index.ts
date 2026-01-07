// import { serve } from "https://deno.land/std@0.168.0/http/server.ts";

// const EDGE_HOOK_SECRET = Deno.env.get("EDGE_HOOK_SECRET") ?? "";

// const unauthorizedResponse = () =>
//   new Response(
//     JSON.stringify({ message: "Unauthorized" }),
//     {
//       status: 401,
//       headers: { "Content-Type": "application/json" },
//     },
//   );

// serve(async (req) => {
//   if (req.method !== "POST") {
//     return new Response(
//       JSON.stringify({ message: "Only POST is allowed" }),
//       { status: 405, headers: { "Content-Type": "application/json" } },
//     );
//   }

//   if (!EDGE_HOOK_SECRET) {
//     console.error("EDGE_HOOK_SECRET is not defined in Supabase secrets");
//     return unauthorizedResponse();
//   }

//   const authHeader = req.headers.get("Authorization") ?? "";
//   const token = authHeader.replace(/^Bearer\s+/i, "");

//   if (token !== EDGE_HOOK_SECRET) {
//     return unauthorizedResponse();
//   }

//   let payload: Record<string, unknown>;
//   try {
//     payload = await req.json();
//   } catch (_error) {
//     return new Response(
//       JSON.stringify({ message: "Payload must be valid JSON" }),
//       { status: 400, headers: { "Content-Type": "application/json" } },
//     );
//   }

//   const eventType = String(payload["event"] ?? "unknown");
//   const detail = payload["detail"] ?? {};

//   console.log(`Received event ${eventType}`, detail);

//   return new Response(
//     JSON.stringify({
//       status: "ok",
//       event: eventType,
//       receivedAt: new Date().toISOString(),
//     }),
//     { status: 200, headers: { "Content-Type": "application/json" } },
//   );
// });
// The function is currently disabled.



Deno.serve((req) => {
  const url = new URL(req.url);

  // Simple health check
  if (req.method === "GET") {
    return new Response("Hello from Supabase Edge Functions ✅", {
      headers: { "Content-Type": "text/plain; charset=utf-8" },
    });
  }

  // Echo JSON body (POST)
  if (req.method === "POST") {
    return (async () => {
      let body: unknown = null;
      try {
        body = await req.json();
      } catch (_) {
        // ignore if no/invalid json
      }

      const payload = {
        ok: true,
        message: "Hello World (POST) ✅",
        path: url.pathname,
        query: Object.fromEntries(url.searchParams.entries()),
        body,
        time: new Date().toISOString(),
      };

      return new Response(JSON.stringify(payload), {
        headers: { "Content-Type": "application/json; charset=utf-8" },
      });
    })();
  }

  return new Response("Method Not Allowed", { status: 405 });
});