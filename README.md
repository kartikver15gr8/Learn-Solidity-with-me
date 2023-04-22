# Learn-Solidity-with-me
This repo contains codes written by me while learning Solidity for Web3
What Is a Blockchain?
A blockchain is a distributed database or ledger that is shared among the nodes of a computer network. As a database, a blockchain stores information electronically in digital format. Blockchains are best known for their crucial role in cryptocurrency systems, such as Bitcoin, for maintaining a secure and decentralized record of transactions. The innovation with a blockchain is that it guarantees the fidelity and security of a record of data and generates trust without the need for a trusted third party.

I've written a blog "Introduction to Solidity" you may check it out [Here](https://kartikeyverma.hashnode.dev/an-introduction-to-solidity-language);

One key difference between a typical database and a blockchain is how the data is structured. A blockchain collects information together in groups, known as blocks, that hold sets of information. Blocks have certain storage capacities and, when filled, are closed and linked to the previously filled block, forming a chain of data known as the blockchain. All new information that follows that freshly added block is compiled into a newly formed block that will then also be added to the chain once filled.

A database usually structures its data into tables, whereas a blockchain, as its name implies, structures its data into chunks (blocks) that are strung together. This data structure inherently makes an irreversible timeline of data when implemented in a decentralized nature. When a block is filled, it is set in stone and becomes a part of this timeline. Each block in the chain is given an exact timestamp when it is added to the chain.

![image](https://user-images.githubusercontent.com/91731654/192086844-6a00c53b-e199-42f9-9a24-c014c65f969e.png)

In a few words, a blockchain is a digital ever-growing list of data records. Such a list is comprised of many blocks of data, which are organized in chronological order and are linked and secured by cryptographic proofs.
The first prototype of a blockchain is dated back to the early 1990s when computer scientist Stuart Haber and physicist W. Scott Stornetta applied cryptographic techniques in a chain of blocks as a way to secure digital documents from data tampering. The work of Haber and Stornetta certainly inspired the work of Dave Bayer, Hal Finney, and many other computer scientists and cryptography enthusiasts - which eventually lead to the creation of Bitcoin, as the first decentralized electronic cash system (or simply the first cryptocurrency). The Bitcoin whitepaper was published in 2008 under the pseudonym Satoshi Nakamoto.
Although the blockchain technology is older than Bitcoin, it is a core underlying component of most cryptocurrency networks, acting as a decentralized, distributed and public digital ledger that is responsible for keeping a permanent record (chain of blocks) of all previously confirmed transactions.

Blockchain transactions occur within a peer-to-peer network of globally distributed computers (nodes). Each node maintains a copy of the blockchain and contributes to the functioning and security of the network. This is what makes Bitcoin a decentralized digital currency that is borderless, censorship-resistant, and that does not require third-party intermediation.
As a distributed ledger technology (DLT) the blockchain is intentionally designed to be highly resistant to modification and frauds (such as double-spending). This is true because the Bitcoin blockchain, as a database of records, cannot be altered, nor can it be tampered without an impractical amount of electricity and computational power - which means the network can enforce the concept of "original" digital documents, making each Bitcoin a very unique and un-copyable form of digital currency.

The so-called Proof of Work consensus algorithm is what made it possible for Bitcoin to be built as a Byzantine fault tolerance (BFT) system, meaning that its blockchain is able to operate continuously as a distributed network, even if some of the participants (nodes) present dishonest behavior or inefficient functionality. The Proof of Work consensus algorithm is an essential element of the Bitcoin mining process.
The technology of blockchain may also be adapted and implemented in other activities, such as healthcare, insurance, supply chain, IOT, and so on. Although it was designed to operate as a distributed ledger (on decentralized systems), it may also be deployed on centralized systems as a way to assure data integrity or to reduce operational costs.
