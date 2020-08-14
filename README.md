# grade dapp 
This project is part of the term project of COMP3010. 

## Description 
This Dapp is a partial implementation of the AURORA2 student management system proposed in my paper. It makes use of smart contracts in Ethereum for information interaction and transaction processing. The smart contracts are written in the solidity language and the deployment of the smart contracts is implemented through truffle. Bootsramp and Javascript are used in the front-end webpages, and interaction with the blockchain is implemented via web3.js and metamask. The Ethereum block chain this system use is deployed and run locally by Canache.Also include the [Video](https://drive.google.com/file/d/1eSTKMekCzPFEQ89i5FF4VjHKw_HfH1RS/view?usp=sharing) of using the Dapp.

## How to Build & Run
1. Environment Requirement 
	1. [Node.js](https://nodejs.org/en/)
	2. npm ( **npm is installed with Node.js**)
	3. truffle (install via npm)
	3. [Ganache](https://www.trufflesuite.com/ganache) ( personal Ethereum blockchain which you can use to run tests, execute commands, and inspect state while controlling how the chain operates.)
	4. [MetaMask](https://metamask.io/download.html) Chrome extension (A crypto wallet & gateway to blockchain apps.)
2. Install package
	* In the terminal of the project directoty , run  `sudo npm install -g truffle`
	* Then , run  `sudo npm install`
3. Open Ganache, click QUICKSTART
	* Make sure the Ganache’s RPC server address is HTTP://127.0.0.1:8545
4. build the  project
	* In the terminal of the project directoty , run ` truffle migrate --reset`
5. Start the server and open the front end website
	* In the terminal of the project directoty , run `npm run dev`

## How to Use
1. After Run the project, you should be redirected to a website, in here you can
	1. Switch user by changing the user in MetaMask, in order to import an account, copy the account’s private key generated by Ganache, the first account in Ganache would be the administrator account. You can know your user information in the website. 
	2. As an administrator, you can publish grades. Every publish will cost some ETH coin, but you will have 100ETH. 
		1. Grade are made of three parts, assignment, project and exam, any part lower than 50% will result in Grade  F.
		2. Grade percentage of each part can be decided by tutor.
	3. As a student, you can query your grade and score by searching with your student ID and course code(optional), query do not cost ETH.
