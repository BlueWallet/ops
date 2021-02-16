#!/usr/bin/env bash
# sudo iptables -t nat -A PREROUTING -p tcp --dport 443 -j DNAT --to-destination 127.0.0.1:50002
export COIN=BitcoinSegwit 
export DAEMON_URL=uuuu:pppp@127.0.0.1
export ALLOW_ROOT=1
export MAX_SESSIONS=100000
export MAX_SEND=5000000
export COST_SOFT_LIMIT=0
export COST_HARD_LIMIT=0
export REQUEST_SLEEP=100
export SSL_CERTFILE=/home/user/server.crt
export SSL_KEYFILE=/home/user/server.key
export DB_DIRECTORY=/home/user/electrum_datadir/
export SERVICES="tcp://:50001,SSL://:50002,wss://:50004"

export INITIAL_CONCURRENT=50000
export REQUEST_TIMEOUT=15
export SESSION_TIMEOUT=15

electrumx_server 

