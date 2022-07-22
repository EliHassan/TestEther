geth --datadir ./node03 account new

geth --datadir ./node03 init ./genesis.json

geth --identity "gemma" --http --http.port "9000" --http.corsdomain "*" --datadir "./node03" --port "30304" --nodiscover --http.api "db,eth,net,web3,personal,miner,admin" --networkid "4201" --nat "any"
