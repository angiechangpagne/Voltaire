# Voltaire
An Enlightened Decentralized Voting App in the Ethereum Blockchain using Distributed Systems V1


The Decentralized Internet is Our Constitutional and Global Right, let's navigate through the future of 5G and Web3!s


Required:
> Truffle Framework- For Establishing a Smart Contract, expedites development on the Ether, contains automated testing and a configureable build pipeline
> npm install -g truffle

>Ganache: Graphical User Interface that displays transaction history and current chain state
>ganache-cli :Command Line tool for Truffle Blockchain Server

We write up the smart contract using Solidity in the smart-contracts folder. 
>.sol files
>The solidity programming language is very similar to a hybrid between Javascript(Typescript) and and Python. In a sense, a block that has been confirmed is like a tuple. 

Essentially, we program the contract to have CRUD functionality, 
> CREATE -> POST -> Candidate has voted, Store on Blockchain
> READ -> GET -> All Candidates that exist on the chain

> UPDATE -> Impossible to change an existing block, but an update event/call will trigger a handler, every addition of a new block is an update to the entire state

> DELETE -> IMPOSSIBLE

Smart Contracts are essentially the Code Modules that run when triggered by gas, when two entities have exchanged ETH, the Smart Contract will handle the event or call that will programmitically update the block chain's state. 


Blockchain and React.js
-Once a vote has been sent, it is immutable, and it's true state can never be altered. The aggregate state cannot be rigged by political interests or "technical difficulties". The probability of a glitch in a peer to peer system is significantly reduced. 

Init: Create Default Smart Contract and Tests
> truffle init
1. truffle compile
2. truffle migrate -deploy contract to network
3. truffle test

>open the Ganache and it will begin the blockchain instance, create a witty name for the workspace like I did. 
>use a typical create-react-app, but with a truffle folder
4. truffle migrate --reset

If you wish to get a domain name and hose this, you have to use ENS and buy a decentralized domain name, to be hosted by the peer to peer net.

5. Configure Metamask-import an account node from Ganache with their public hash. 

6. npm run dev 
>just like a standard react app on the client side, but instead of a Node server, we are using Ethereum's Lite Server(it's Lite. )
>Voting with truth, without the bullshits.

Remember to Send It.  



Tags:
Solidity
Blockchain
ethereum
ether
React
Javascript
GraphQL
Rust
Assemblyscript
WASM
Web3
Decentralize
#newAge
#newInternet
#freeTheInternet
#openSource
#surge
#projectRedEther


I got the foundation of this project from dAppUniversity, they host a series of free, open-source tutorials on Blockchain, and I plan to expand this with React. 

will be releasing a series of posts in the coming months, and add a dedicated PWA Site to Project Red Ether. This is just a beginning...  
