#!/bin/sh

HOSTS_URL=https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts
OUT_FILENAME="hosts-$(date +%Y%m%d).zip"

wget -O hosts $HOSTS_URL
zip -r "$OUT_FILENAME" META-INF/ hosts
md5sum "$OUT_FILENAME" > "$OUT_FILENAME.md5"
