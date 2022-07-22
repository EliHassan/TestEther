mkdir root

cd mkdir

mkdir node01 node02 node03

geth --datadir ./node01 account new
geth --datadir ./node02 account new
geth --datadir ./node03 account new

geth --datadir ./node01 init ./genesis.json
geth --datadir ./node02 init ./genesis.json
geth --datadir ./node03 init ./genesis.json

geth --identity "alpha" --http --http.port "7000" --http.corsdomain "*" --datadir "./node01" --port "30304" --nodiscover --http.api "db,eth,net,web3,personal,miner,admin" --networkid "4201" --nat "any"
geth --identity "beta" --http --http.port "8000" --http.corsdomain "*" --datadir "./node02" --port "30304" --nodiscover --http.api "db,eth,net,web3,personal,miner,admin" --networkid "4201" --nat "any"
geth --identity "gemma" --http --http.port "9000" --http.corsdomain "*" --datadir "./node03" --port "30304" --nodiscover --http.api "db,eth,net,web3,personal,miner,admin" --networkid "4201" --nat "any"
