## Smart Contract Feature Repository Structure and Process

This document details how a Git repository for an Ethereum Smart contract feature should be structured.

### Branching
The `Master` branch is reserved for production code. This is to keep it very obvious what is deployed to the blockchain.

### Structure
**README.md** - The Readme file should _at least_ include the following information
- contract addresses if deployed on networks
- audit information
- If supporting Dapp included, how to run it and associated requirements
- How to contribute
- point to `SECURITY.md`