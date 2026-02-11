#!/usr/bin/env bash
set -euo pipefail

if ! command -v niri >/dev/null 2>&1 || ! command -v jq >/dev/null 2>&1; then
  exit 0
fi

focused_json="$(niri msg -j focused-window 2>/dev/null || true)"
if [[ -z "${focused_json:-}" || "$focused_json" == "null" ]]; then
  exit 0
fi

window_id="$(jq -r '.id // empty' <<<"$focused_json")"
window_pid="$(jq -r '.pid // empty' <<<"$focused_json")"
app_id="$(jq -r '(.app_id // "") | ascii_downcase' <<<"$focused_json")"
title="$(jq -r '(.title // "") | ascii_downcase' <<<"$focused_json")"

niri msg action close-window >/dev/null 2>&1 || true

if [[ "$app_id" =~ v2ray || "$title" =~ v2ray ]]; then
  sleep 0.25

  if [[ -n "${window_id:-}" ]] && niri msg -j windows 2>/dev/null | jq -e --argjson id "$window_id" '.[] | select(.id == $id)' >/dev/null; then
    if [[ -n "${window_pid:-}" && "$window_pid" =~ ^[0-9]+$ ]]; then
      kill -TERM "$window_pid" >/dev/null 2>&1 || true
      sleep 0.2
      kill -KILL "$window_pid" >/dev/null 2>&1 || true
    fi
    pkill -f '/opt/v2rayn-bin/v2rayN' >/dev/null 2>&1 || true
    pkill -x 'v2rayN' >/dev/null 2>&1 || true
  fi
fi
