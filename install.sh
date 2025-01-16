#!/bin/bash

# Check if a hostname is provided as an argument
if [ -z "$1" ]; then
  # No hostname provided, execute the command without -e host
  echo "No hostname provided. Running ansible-playbook to all home host..."
  ansible-playbook -i inventory playbook.yml
else
  # Hostname provided, execute the command with -e host=<hostname>
  hostname="$1"
  echo "Hostname provided: $hostname. Running ansible-playbook with -e host=$hostname..."
  ansible-playbook -i inventory playbook.yml -e host="$hostname"
fi