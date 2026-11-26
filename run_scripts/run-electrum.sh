#!/usr/bin/env bash
# sudo iptables -t nat -A PREROUTING -p tcp --dport 443 -j DNAT --to-destination 127.0.0.1:50002
ulimit -n 99000
export DB_ENGINE=rocksdb
export COIN=Bitcoin
export DAEMON_URL=uuuu:password@127.0.0.1
export ALLOW_ROOT=1
export MAX_SESSIONS=100000
export MAX_SEND=9000000
export COST_SOFT_LIMIT=100000
export COST_HARD_LIMIT=1000000
export REQUEST_SLEEP=1000
export SSL_CERTFILE=/home/data/.local/share/caddy/certificates/acme-v02.api.letsencrypt.org-directory/electrum2.bluewallet.io/electrum2.bluewallet.io.crt
export SSL_KEYFILE=/home/data/.local/share/caddy/certificates/acme-v02.api.letsencrypt.org-directory/electrum2.bluewallet.io/electrum2.bluewallet.io.key
export DB_DIRECTORY=/data-big2/electrum_datadir/
export SERVICES="SSL://:443,wss://:50004"
#export SERVICES="tcp://:50001"

export INITIAL_CONCURRENT=50
export REQUEST_TIMEOUT=120
export SESSION_TIMEOUT=300
export BANDWIDTH_UNIT_COST=50000

python3 ./electrumx/electrumx_server

