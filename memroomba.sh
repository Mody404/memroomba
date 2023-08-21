#!/bin/bash

WEBHOOK_URL="ADD YOUR WEBHOOK"
MACHINE_IDENTIFIER="YOURVPS.VPS.COM"

INITIAL_MEMORY=$(free -m | awk 'NR==2{print $3}')
INITIAL_CACHE=$(free -h | awk '/^Mem:/{print $6}')

sync; echo 1 > /proc/sys/vm/drop_caches
sleep 1
sync; echo 2 > /proc/sys/vm/drop_caches
sleep 1
sync; echo 3 > /proc/sys/vm/drop_caches

sudo sysctl -w vm.drop_caches=3

FINAL_MEMORY=$(free -m | awk 'NR==2{print $3}')
FINAL_CACHE=$(free -h | awk '/^Mem:/{print $6}')

OPTIMIZED_MEMORY=$((INITIAL_MEMORY - FINAL_MEMORY))

TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

curl -H "Content-Type: application/json" -X POST -d '{
  "embeds": [
    {
      "title": "Memory Optimization Report",
      "description": "Memory optimization and cache clearing completed.",
      "color": 16737792,
      "timestamp": "'"$TIMESTAMP"'",
      "fields": [
        {
          "name": "Machine Identifier",
          "value": "'"$MACHINE_IDENTIFIER"'"
        },
        {
          "name": "Resources Optimized",
          "value": "'"$OPTIMIZED_MEMORY"'MB Memory"
        },
        {
          "name": "Initial Cache Usage",
          "value": "'"$INITIAL_CACHE"'"
        },
        {
          "name": "Final Cache Usage",
          "value": "'"$FINAL_CACHE"'"
        }
      ],
      "image": {
        "url": "'"$IMAGE_URL"'"
      }
    }
  ]
}' "$WEBHOOK_URL"

echo "Memory optimization and cache clearing completed."
