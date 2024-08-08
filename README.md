# Uniswap V4 Hook 
Use case:
Launch a memecoin - BearCoin

We set up a pool for ETH/BearCoin

1. Issue points for every time somebody buys BearCoin with ETH
2. Issue Points everytime somebody adds liquidity to the pool
3. Referral mechanic where Alice can refer Bob and then Alice get 10% of points from Bob everytime Bob does (1) or (2)

This is not a production ready code. Its meant for learning purpose. 

### How many points to give out?
- For every swap, we will give out (20% of the value in ETH) as points e.g. if somebody sells 1 ETH to buy "BearCoin", they will get 0.e POINTS
- For add liquidity, we will keep it 1:1 for ETH added

### How are these points represented?

- Separate ERC-20 token call it `POINTS`, minting `POINTS` to people who do those above things


## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
# UniswapV4-Points-Hook-Live
