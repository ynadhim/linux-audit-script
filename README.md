# linux-audit-script

# Linux System Audit Script

This is a simple Bash script that performs a basic security audit on a Linux system.

## What It Does
- Shows system information (date, uptime, hostname)
- Lists open TCP/UDP ports
- Identifies users with root (UID 0) access
- Finds world-writable files
- Checks for failed SSH login attempts

## Usage
```bash
chmod +x audit.sh
./audit.sh
