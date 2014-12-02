#!/bin/sh
echo "Starting installation of atlassian-stash-3.5.0-x64..."
cd /data 
wget -q http://www.atlassian.com/software/stash/downloads/binary/atlassian-stash-3.5.0-x64.bin
chmod +x atlassian-stash-3.5.0-x64.bin
./atlassian-stash-3.5.0-x64.bin -q
exit 0