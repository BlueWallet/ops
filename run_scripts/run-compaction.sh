#!/usr/bin/env bash
export COIN=BitcoinSegwit 
export DAEMON_URL=uuuu:pppp@127.0.0.1
export HOST=199.217.117.27  
export TCP_PORT=50001
export SSL_PORT=443
export ALLOW_ROOT=1
export MAX_SESSIONS=10000
export MAX_SEND=5000000
export COST_SOFT_LIMIT=0
export COST_HARD_LIMIT=0
export REQUEST_SLEEP=250
export SSL_CERTFILE=/home/user/server.crt
export SSL_KEYFILE=/home/user/server.key
export DB_DIRECTORY=/home/user/electrum_datadir/

export REQUEST_SLEEP=1000
export INITIAL_CONCURRENT=100
export REQUEST_TIMEOUT=30
export SESSION_TIMEOUT=30

electrumx_compact_history
