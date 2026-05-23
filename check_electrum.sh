echo tcp: electrum1
echo '{"id": 1, "method": "blockchain.scripthash.get_balance", "params": ["716decbe1660861c3d93906cb1d98ee68b154fd4d23aed9783859c1271b52a9c"]}' | timeout 2 nc electrum1.bluewallet.io  50001 -i 1
echo tcp: electrum2
echo '{"id": 1, "method": "blockchain.scripthash.get_balance", "params": ["716decbe1660861c3d93906cb1d98ee68b154fd4d23aed9783859c1271b52a9c"]}' | timeout 2 nc electrum2.bluewallet.io  50001 -i 1
echo tcp: electrum3
echo '{"id": 1, "method": "blockchain.scripthash.get_balance", "params": ["716decbe1660861c3d93906cb1d98ee68b154fd4d23aed9783859c1271b52a9c"]}' | timeout 2 nc electrum3.bluewallet.io  50001 -i 1
echo ssl: electrum1
echo '{"id": 1, "method": "blockchain.scripthash.get_balance", "params": ["716decbe1660861c3d93906cb1d98ee68b154fd4d23aed9783859c1271b52a9c"]}' | timeout 2 openssl s_client -quiet  -connect electrum1.bluewallet.io:443 2>/dev/null
echo ssl: electrum2
echo '{"id": 1, "method": "blockchain.scripthash.get_balance", "params": ["716decbe1660861c3d93906cb1d98ee68b154fd4d23aed9783859c1271b52a9c"]}' | timeout 2 openssl s_client -quiet  -connect electrum2.bluewallet.io:443 2>/dev/null
echo ssl: electrum3
echo '{"id": 1, "method": "blockchain.scripthash.get_balance", "params": ["716decbe1660861c3d93906cb1d98ee68b154fd4d23aed9783859c1271b52a9c"]}' | timeout 2 openssl s_client -quiet  -connect electrum3.bluewallet.io:443 2>/dev/null
echo wss: electrum.layerzwallet.com
echo '{"id": 1, "method": "blockchain.scripthash.get_balance", "params": ["716decbe1660861c3d93906cb1d98ee68b154fd4d23aed9783859c1271b52a9c"]}' | timeout 2 websocat -n -t  wss://electrum.layerzwallet.com:50004
echo wss: electrum2.bluewallet.io
echo '{"id": 1, "method": "blockchain.scripthash.get_balance", "params": ["716decbe1660861c3d93906cb1d98ee68b154fd4d23aed9783859c1271b52a9c"]}' | timeout 2 websocat -n -t  wss://electrum2.bluewallet.io:50004





echo
echo
echo
echo headers: electrum1
echo '{"id": 1, "method": "blockchain.headers.subscribe", "params": []}' | timeout 2 nc electrum1.bluewallet.io  50001 -i 1
echo headers: electrum2
echo '{"id": 1, "method": "blockchain.headers.subscribe", "params": []}' | timeout 2 nc electrum2.bluewallet.io  50001 -i 1
echo headers: electrum3
echo '{"id": 1, "method": "blockchain.headers.subscribe", "params": []}' | timeout 2 nc electrum3.bluewallet.io  50001 -i 1


