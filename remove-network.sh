#!/usr/bin/env bash
docker -H $NETWORK_HOST network rm $NETWORK_NAME || true