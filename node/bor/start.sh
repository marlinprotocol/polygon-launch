#!/usr/bin/env sh

set -x #echo on

BOR_DIR=${BOR_DIR:-/data/.bor}
DATA_DIR=$BOR_DIR/data

/home/ubuntu/go/bin/bor --datadir $DATA_DIR \
  --port 30303 \
  --ipcpath $DATA_DIR/bor.ipc \
  --http --http.addr 0.0.0.0 --http.api "lin" --vmodule "rpc=5" \
  --syncmode 'full' \
  --networkid '137' \
  --miner.gaslimit '20000000' \
  --miner.gastarget '20000000' \
  --txpool.nolocals \
  --txpool.accountslots '128' \
  --txpool.globalslots '20000'  \
  --txpool.lifetime '0h16m0s' \
  --maxpeers 200 \
  --bootnodes "enode://0cb82b395094ee4a2915e9714894627de9ed8498fb881cec6db7c65e8b9a5bd7f2f25cc84e71e89d0947e51c76e85d0847de848c7782b13c0255247a6758178c@44.232.55.71:30303,enode://88116f4295f5a31538ae409e4d44ad40d22e44ee9342869e7d68bdec55b0f83c1530355ce8b41fbec0928a7d75a5745d528450d30aec92066ab6ba1ee351d710@159.203.9.164:30303"
