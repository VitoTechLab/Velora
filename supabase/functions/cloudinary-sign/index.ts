// supabase/functions/cloudinary-sign/index.ts
import { serve } from "https://deno.land/std@0.224.0/http/server.ts";

type SignRequest = {
  public_id: string;
  folder: string;
};

function json(data: unknown, status = 200, extraHeaders: HeadersInit = {}) {
  return new Response(JSON.stringify(data), {
    status,
    headers: {
      "content-type": "application/json; charset=utf-8",
      ...extraHeaders,
    },
  });
}

function withCors(req: Request, res: Response) {
  const origin = req.headers.get("origin") ?? "*";
  const headers = new Headers(res.headers);

  headers.set("access-control-allow-origin", origin);
  headers.set("access-control-allow-credentials", "true");
  headers.set(
    "access-control-allow-headers",
    "authorization, apikey, content-type",
  );
  headers.set("access-control-allow-methods", "POST, OPTIONS");
  headers.set("vary", "origin");

  return new Response(res.body, { status: res.status, headers });
}

async function sha1Hex(input: string): Promise<string> {
  const data = new TextEncoder().encode(input);
  const digest = await crypto.subtle.digest("SHA-1", data);
  return Array.from(new Uint8Array(digest))
    .map((b) => b.toString(16).padStart(2, "0"))
    .join("");
}

function buildToSign(params: Record<string, string | number>) {
  return Object.entries(params)
    .filter(([, v]) => v !== undefined && v !== null && `${v}`.length > 0)
    .sort(([a], [b]) => a.localeCompare(b))
    .map(([k, v]) => `${k}=${v}`)
    .join("&");
}

async function getUserIdFromSupabase(req: Request): Promise<string> {
  const supabaseUrl = Deno.env.get("SUPABASE_URL") ?? "";
  const supabaseAnonKey = Deno.env.get("SUPABASE_ANON_KEY") ?? "";

  if (!supabaseUrl || !supabaseAnonKey) {
    throw new Error("Missing SUPABASE_URL or SUPABASE_ANON_KEY in env");
  }

  const authHeader = req.headers.get("authorization") ?? "";
  if (!authHeader.toLowerCase().startsWith("bearer ")) {
    // lebih tepat 401
    const err: any = new Error("Missing Bearer token");
    err.status = 401;
    throw err;
  }

  const r = await fetch(`${supabaseUrl}/auth/v1/user`, {
    headers: {
      authorization: authHeader,
      apikey: supabaseAnonKey,
    },
  });

  if (!r.ok) {
    const text = await r.text().catch(() => "");
    const err: any = new Error(`Invalid token or auth error: ${r.status} ${text}`);
    err.status = 401;
    throw err;
  }

  const user = await r.json();
  const userId = user?.id;
  if (!userId || typeof userId !== "string") {
    const err: any = new Error("Failed to read user id from token");
    err.status = 401;
    throw err;
  }
  return userId;
}

function validateOwnership(userId: string, folder: string, publicId: string) {
  const expectedPrefix = `velora/users/${userId}/`;

  if (!folder.startsWith(expectedPrefix)) {
    const err: any = new Error("folder is not owned by this user");
    err.status = 403;
    throw err;
  }
  if (!publicId.startsWith(expectedPrefix)) {
    const err: any = new Error("public_id is not owned by this user");
    err.status = 403;
    throw err;
  }

  if (folder.includes("..") || publicId.includes("..")) throw new Error("Invalid path");
  if (folder.includes("\\") || publicId.includes("\\")) throw new Error("Invalid path");

  const re = new RegExp(`^velora/users/${userId}/[a-zA-Z0-9/_.-]+$`);
  if (!re.test(folder) || !re.test(publicId)) throw new Error("Invalid path format");
}

serve(async (req) => {
  if (req.method === "OPTIONS") {
    return withCors(
      req,
      new Response(null, {
        status: 204,
        headers: {
          "access-control-allow-origin": req.headers.get("origin") ?? "*",
          "access-control-allow-credentials": "true",
          "access-control-allow-headers": "authorization, apikey, content-type",
          "access-control-allow-methods": "POST, OPTIONS",
        },
      }),
    );
  }

  if (req.method !== "POST") {
    return withCors(req, json({ error: "Method not allowed" }, 405));
  }

  try {
    const cloudinaryApiKey = Deno.env.get("CLOUDINARY_API_KEY") ?? "";
    const cloudinaryApiSecret = Deno.env.get("CLOUDINARY_API_SECRET") ?? "";

    if (!cloudinaryApiKey || !cloudinaryApiSecret) {
      throw new Error("Missing CLOUDINARY_API_KEY or CLOUDINARY_API_SECRET in env");
    }

    const body = (await req.json().catch(() => null)) as SignRequest | null;
    const folder = body?.folder?.trim() ?? "";
    const publicId = body?.public_id?.trim() ?? "";

    if (!folder || !publicId) {
      return withCors(req, json({ error: "folder and public_id are required" }, 400));
    }

    const userId = await getUserIdFromSupabase(req);
    validateOwnership(userId, folder, publicId);

    const timestamp = Math.floor(Date.now() / 1000);

    const paramsToSign: Record<string, string | number> = {
      folder,
      public_id: publicId,
      timestamp,
    };

    const toSign = buildToSign(paramsToSign);
    const signature = await sha1Hex(toSign + cloudinaryApiSecret);

    return withCors(
      req,
      json({
        api_key: cloudinaryApiKey,
        timestamp,
        signature,
        folder,
        public_id: publicId,
      }, 200),
    );
  } catch (e) {
    const message = e instanceof Error ? e.message : String(e);
    const status = (e as any)?.status ?? 400;
    return withCors(req, json({ error: message }, status));
  }
});
