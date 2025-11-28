#!/usr/bin/env bash

# Simple system monitoring script

echo "===== SYSTEM MONITOR ====="

# CPU usage
echo -n "CPU Usage: "
top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8"%"}'

# RAM usage
echo -n "RAM Usage: "
free -h | awk '/Mem/ {print $3 "/" $2}'

# Disk usage
echo -n "Disk Usage: "
df -h / | awk 'NR==2 {print $3 "/" $2}'

# Uptime
echo -n "Uptime: "
uptime -p

echo "=========================="
