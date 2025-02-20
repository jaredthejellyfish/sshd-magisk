#!/system/bin/sh
while true; do
  if ping -c 1 8.8.8.8 >/dev/null 2>&1; then
    echo "Network detected, starting sshd" >> /data/local/tmp/mymodule.log
    sshd
    break
  fi
  sleep 5
done
