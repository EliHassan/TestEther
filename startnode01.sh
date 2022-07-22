geth --datadir ./node01 account new

geth --datadir ./node01 init ./genesis.json

geth --identity "aplha" --http --http.port "7000" --http.corsdomain "*" --datadir "./node01" --port "30304" --nodiscover --http.api "db,eth,net,web3,personal,miner,admin" --networkid "4201" --nat "any"
