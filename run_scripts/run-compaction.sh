#!/usr/bin/env bash
export COIN=Bitcoin
export DAEMON_URL=uuuu:pppp@127.0.0.1
export ALLOW_ROOT=1
export MAX_SESSIONS=10000
export MAX_SEND=5000000
export COST_SOFT_LIMIT=0
export COST_HARD_LIMIT=0
export REQUEST_SLEEP=250
export DB_DIRECTORY=/data-fast/electrum_datadir

export REQUEST_SLEEP=1000
export INITIAL_CONCURRENT=100
export REQUEST_TIMEOUT=30
export SESSION_TIMEOUT=30

python3 ./electrumx/electrumx_compact_history
