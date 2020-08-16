cd "$(dirname "$0")"
./bin/bitcoind  -datadir=./datadir  -rpcuser=uuuu  -rpcpassword=pppp -rpcbind=0.0.0.0  -txindex  --zmqpubrawblock=tcp://111.222.333.444:28332   --zmqpubrawtx=tcp://111.222.333.444:28333 -rpcallowip=0.0.0.0/0 -server=1 -deprecatedrpc=accounts -wallet=wallet.dat
