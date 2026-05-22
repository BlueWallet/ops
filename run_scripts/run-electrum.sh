#!/usr/bin/env bash
# sudo iptables -t nat -A PREROUTING -p tcp --dport 443 -j DNAT --to-destination 127.0.0.1:50002
ulimit -n 99000
export COIN=Bitcoin
export DAEMON_URL=uuuu:pppp@127.0.0.1
export ALLOW_ROOT=1
export MAX_SESSIONS=100000
export MAX_SEND=5000000
export COST_SOFT_LIMIT=1000000000
export COST_HARD_LIMIT=2000000000
export REQUEST_SLEEP=1000
export SSL_CERTFILE=/root/.local/share/caddy/certificates/acme-v02.api.letsencrypt.org-directory/electrum.layerzwallet.com/electrum.layerzwallet.com.crt
export SSL_KEYFILE=/root/.local/share/caddy/certificates/acme-v02.api.letsencrypt.org-directory/electrum.layerzwallet.com/electrum.layerzwallet.com.key
export DB_DIRECTORY=/mnt/volume_fra1_02/electrum_datadir/
export SERVICES="tcp://:50001,SSL://:443,wss://:50004"

export INITIAL_CONCURRENT=20
export REQUEST_TIMEOUT=120
export SESSION_TIMEOUT=300
export BANDWIDTH_UNIT_COST=50000

python3.10 ./electrumx/electrumx_server

