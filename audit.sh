#!/bin/bash
exec > audit.out 2>&1

# Yousif Nadhim - Linux System Audit Script

echo "===== SYSTEM AUDIT START ====="
echo "Date: $(date)"
echo "Hostname: $(hostname)"
echo "Uptime:"
uptime

echo
echo "===== OPEN NETWORK PORTS ====="
ss -tuln

echo
echo "===== USERS WITH UID 0 ====="
awk -F: '$3 == 0 { print $1 " (UID: " $3 ")" }' /etc/passwd

echo
echo "===== WORLD WRITABLE FILES ====="
find / -type f -perm -0002 -exec ls -l {} \; 2>/dev/null | head -n 10

echo
echo "===== FAILED SSH LOGIN ATTEMPTS ====="
grep "Failed password" /var/log/auth.log 2>/dev/null | tail -n 10

