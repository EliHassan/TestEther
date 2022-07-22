# TestEther
Tools Required:
truffle
genache
npm
nodejs
/********************************************/
First of all run three script files in different bash terminal by this command ./

1:
geth attach http://127.0.0.1:8000
2:
admin.nodeInfo

3:Copy the enode address completely:

>enode: "enode://26f7b83...ed769122f1692e@[::]:30303?discport=0"

4:connect the other nodes to this one by running the following command in their respective terminals:

> admin.addPeer("enode://26f7b8...92e@[::]:30303?discport=0")

5:verify that the nodes are peering by entering the following command in the terminal corresponding to the admin node:

> net.peerCount

**************Sending Ether***********

6:
> eth.accounts
7:
> eth.getBalance(eth.accounts[0])
8:
> personal.unlockAccount(eth.accounts[0])
9:
> eth.sendTransaction({from:eth.accounts[0], to:eth.accounts[1], value:1000})


********* Start a miner *********
10:
> miner.setEtherbase(eth.accounts[0])
11:
> miner.start()

******** Deploy a Smart Contract **********

12:
 npm install -g truffle
13:
 truffle init

more continue from this link:
https://medium.com/datawallet-blog/how-to-deploy-a-local-private-ethereum-blockchain-c2b497f068f4
