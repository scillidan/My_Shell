#!/bin/bash

# export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890
output=$(podman pull lobehub/lobe-chat:latest 2>&1)

if [ $? -ne 0 ]; then
  exit 1
fi

echo "$output" | grep -q "Image is up to date for lobehub/lobe-chat:latest"

if [ $? -eq 0 ]; then
  exit 0
fi

echo "Detected Lobe-Chat update"

echo "Removed: $(podman rm -f Lobe-Chat)"

echo "Started: $(podman run -d --network=host --env-file /path/to/lobe.env --name=Lobe-Chat --restart=always lobehub/lobe-chat)"

echo "Update time: $(date)"
echo "Version: $(podman inspect lobehub/lobe-chat:latest | grep 'org.opencontainers.image.version' | awk -F'"' '{print $4}')"

podman images | grep 'lobehub/lobe-chat' | grep -v 'lobehub/lobe-chat-database' | grep -v 'latest' | awk '{print $3}' | xargs -r podman rmi > /dev/null 2>&1
echo "Removed old images."
