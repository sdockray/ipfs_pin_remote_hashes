#!/bin/bash
# Usage:
# ./ipfs_pin_remote_hashes.sh http://some.url/hashes/list.txt
while read -r h; do
  ipfs pin add $h
done <<< "$(wget $1 -q -O -)"