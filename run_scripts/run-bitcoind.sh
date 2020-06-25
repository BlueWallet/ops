cd "$(dirname "$0")"
./bitcoin-0.19.1/bin/bitcoind -txindex=1 -datadir=./bitcoin-0.19.1/datadir  -rpcuser=uuuu  -rpcpassword=pppp -rpcbind=0.0.0.0  -rpcallowip=0.0.0.0/0 -server=1
