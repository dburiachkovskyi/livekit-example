#!/bin/sh

docker run --rm -p 7880:7880 \
    -p 7881:7881 \
    -p 7882:7882/udp \
    -v $PWD/livekit.yaml:/livekit.yaml \
    livekit/livekit-server:vfix-node-ip-SNAPSHOT \
    --config /livekit.yaml \
    --dev \
    --node-ip 127.0.0.1
