<img align='right' src="https://user-images.githubusercontent.com/24830039/156899959-a4a50eab-9f2b-41e1-9bad-9c5aa69488c0.png">

_⚠️ For education purposes only. This is by no means a complete implementation and it is by no means secure!_

## Contents
- [Contents](#contents)
- [Oreo Coin Blockchain](#oreo-coin-blockchain)
- [Information](#information)
  - [What is a Block ?](#what-is-a-block-)
  - [What is a Blockchain ?](#what-is-a-blockchain-)
- [To do](#to-do)

## Oreo Coin Blockchain
A Blockchain ruby app to keep track of OreoCoin Cryptocurrency transactions (or and type of data you want) this project is bassed on [Creating a blockchain with Javascript](https://www.youtube.com/watch?v=zVqczFZr124) tutorial, and I translated it to ruby to practice both languages. 

## Information
### What is a Block ?
In simple words, block is an object that stores mainly three things 
1. `Data` => Any data you want to store for example: a `transaction`
1. It's `Hash` => a digital fingerprint
1. Previous block's `Hash`=> previous block finger print

### What is a Blockchain ?
- Easy : Blockchain is a system of recording information in a way that makes it difficult or impossible to change, hack, or cheat the system.
- Hard : A blockchain is a decentralized, distributed, and oftentimes public, digital ledger consisting of records called blocks that is used to record any type of data (the most famous appliction is cryptocurrency transactions)

## To do
- Simple proof-of-work algorithm
- Verify blockchain (to prevent tampering)
- Generate wallet (private/public key)
- Sign transactions
  
