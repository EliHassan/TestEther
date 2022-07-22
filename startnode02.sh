geth --datadir ./node02 account new

geth --datadir ./node02 init ./genesis.json

geth --identity "beta" --http --http.port "8000" --http.corsdomain "*" --datadir "./node02" --port "30304" --nodiscover --http.api "db,eth,net,web3,personal,miner,admin" --networkid "4201" --nat "any"
