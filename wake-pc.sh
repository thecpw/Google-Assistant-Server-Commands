#!/bin/bash
# Limit Log Size =========================================================

if [ -f /root/scripts/logs/wake-pc.log ]; then
  tail -n 600 /root/scripts/logs/wake-pc.log > /root/scripts/logs/wake-pc.tmp
  mv /root/scripts/logs/wake-pc.tmp /root/scripts/logs/wake-pc.log

else
   touch /root/cron-scripts/logs/wake-pc.log
fi

# ========================================================================

now=$(date)

if ether-wake MAC ADDRESS ; then
  echo "[$now] PC has awoken" >> /root/scripts/logs/wake-pc.log
else
  echo "[$now] PC still alseep" >> /root/scripts/logs/wake-pc.log
fi

