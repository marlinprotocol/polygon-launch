#!/usr/bin/env sh

NODE_DIR=/data/node
HEIMDALL_HOME=/data/.heimdalld

# init heimdall node
/home/ubuntu/go/bin/heimdalld init --home $HEIMDALL_HOME

# copy node directories to home directories
cp -rf $NODE_DIR/heimdall/config/genesis.json $HEIMDALL_HOME/config/
