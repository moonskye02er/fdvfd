#!/bin/sh
if [ ! -f UUID ]; then
  UUID="6dba9a6e-c24f-4f3f-9e9d-f9c5876839e9"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

