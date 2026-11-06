#!/usr/bin/env bash
# Rebuilds the standalone page from likewize-on-hand.html and copies it into the
# iOS bundle and the Vercel deploy folder. Run this after editing the source,
# then Run in Xcode and `vercel deploy --prod` from likewize-on-hand-web.
set -euo pipefail
cd "$(dirname "$0")"

OUT_APP="LikewizeOnHand/LikewizeOnHand/index.html"
OUT_WEB="likewize-on-hand-web/index.html"

{
  cat <<'HEAD'
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
<style>
  :root{color-scheme:light;padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}
  html{-webkit-text-size-adjust:100%}
  body{margin:0;font:14px system-ui,-apple-system,sans-serif;-webkit-tap-highlight-color:transparent;overscroll-behavior-y:none}
  img{max-width:100%}
  [hidden]{display:none!important}
</style>
HEAD
  cat likewize-on-hand.html
  printf '\n</html>\n'
} > "$OUT_APP"

cp "$OUT_APP" "$OUT_WEB"
echo "built $OUT_APP"
echo "built $OUT_WEB"
