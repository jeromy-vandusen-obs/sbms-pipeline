docker -H $NETWORK_HOST network create -d overlay -o encrypted --attachable $NETWORK_NAME || true