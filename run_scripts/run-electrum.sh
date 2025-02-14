#!/usr/bin/env bash
# sudo iptables -t nat -A PREROUTING -p tcp --dport 443 -j DNAT --to-destination 127.0.0.1:50002
ulimit -n 99000
export COIN=BitcoinSegwit
export DAEMON_URL=uuuu:pppp@127.0.0.1
export ALLOW_ROOT=1
export MAX_SESSIONS=100000
export MAX_SEND=5000000
export COST_SOFT_LIMIT=0
export COST_HARD_LIMIT=0
export REQUEST_SLEEP=100
export SSL_CERTFILE=/root/.local/share/caddy/certificates/acme-v02.api.letsencrypt.org-directory/electrum1.bluewallet.io/electrum1.bluewallet.io.crt
export SSL_KEYFILE=/root/.local/share/caddy/certificates/acme-v02.api.letsencrypt.org-directory/electrum1.bluewallet.io/electrum1.bluewallet.io.key
export DB_DIRECTORY=/mnt/volume_fra1_02/electrum_datadir/
export SERVICES="tcp://:50001,SSL://:443,wss://:50004"

export INITIAL_CONCURRENT=50000
export REQUEST_TIMEOUT=9
export SESSION_TIMEOUT=9

python3 ./electrumx/electrumx_server
