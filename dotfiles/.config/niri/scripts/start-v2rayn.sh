#!/usr/bin/env bash
set -u

if pgrep -f '/opt/v2rayn-bin/v2rayN' >/dev/null 2>&1; then
  exit 0
fi

/opt/v2rayn-bin/v2rayN >/dev/null 2>&1 &

if ! command -v niri >/dev/null 2>&1 || ! command -v jq >/dev/null 2>&1; then
  exit 0
fi

for _ in $(seq 1 40); do
  window_id="$(niri msg -j windows 2>/dev/null | jq -r '.[] | select(((.app_id // "") | test("^v2rayN$"; "i")) or ((.title // "") | test("v2ray"; "i"))) | .id' | head -n 1)"
  if [[ -n "${window_id:-}" && "$window_id" != "null" ]]; then
    niri msg action move-window-to-workspace --window-id "$window_id" --focus false 5 >/dev/null 2>&1 || true
    break
  fi
  sleep 0.25
done
