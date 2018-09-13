#!/usr/bin/env bash
docker -H $NETWORK_HOST network create -d overlay -o encrypted --attachable --subnet 10.0.0.0/24 $NETWORK_NAME || true