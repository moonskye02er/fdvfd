#!/bin/sh
if [ ! -f UUID ]; then
  UUID="edbd5369-8031-4c95-a12f-124a9c4d9960"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

