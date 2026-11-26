cd "$(dirname "$0")"
./bitcoin-31.0/bin/bitcoind -txindex=1 -txospenderindex=1-datadir=/data-fast/bitcoin_datadir -blocksdir=/data-big1/bitcoin_datadir -rpcuser=uuuu  -rpcpassword=password  -rpcbind=0.0.0.0  -rpcallowip=0.0.0.0/0 -server=1  -disablewallet=1  -peerblockfilters -blockfilterindex -rpcthreads=64 -rpcworkqueue=512 -dbcache=24576 -maxmempool=1000 -par=10
