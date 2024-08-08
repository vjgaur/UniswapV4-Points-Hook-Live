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

## Mechanism Design

(1) - issue points everytime somebody swaps to buy `TOKEN` for `ETH`

- beforeSwap
- OR, afterSwap

(2) - issue pooints everytime somebody adds liquidity

- beforeAddLiquidity
  -OR, afterAddLiquidity

## BalanceDelta

Alice is doing a swap on some pool

```
function swap() {
    beforeSwap()
    //How much tokens does Alice get back?
    //BalanceDelta
   type BalanceDelta is int256
   //int256 = 2 int128 values
   //<first 128 bits = amount9Delta>
   //<second 128 bits = amount1Delta>


}
//BalanceDelta struct
struct BalanceDelta{
    amount0Delta;
    amount1Delta;
}
```

How many different "configurations" of swaps are possible in Uniswap?

Ans: There are 4 different configurations of swaps possible in Uniswap. They are divided into two caegories

"Direction of the swap" `zeroForOne`
In the case of ETH/BearCoin pool:

- sell ETH and buy BearCoin (zeroForOne)
- sell BearCoin and buy ETH (oneForZero)

"exact input vs. exact output" swaps

Sell ETH for BearCoin

Exact input swap:

- "Sell 1 ETH for BearCoin"
  - amount of token 0 to be swapped is specified upfront
  - amount of token 1 to get back is unknown until after the swap

Exact output swap:

- "Sell ??? ETH for 1000 BearCoin"
  - amount of token 0 to be swapped is unknown
  - amount of token 1 to get back is specified upfront

---

4 total possibilites of swap:

- exact input zero for one
- exact input one for zero

- exact output zero for one
- exact output one for zero

Can BalanceDelta have a negative value??

"Technical Introduction"
- whenver there is a balance change involved, all numbers in uniswap by convention are represented from the perspective of the "User"

    `amount0Delta` = -1 ether 
    => User needs to send 1 ETH to Uniswap (user owes 1 ETH)

    `amount1Delta` = 500 token
    => User is owed 500 tokens by Uniswap (Uniswap needs to send 500 tokens to the user)

## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

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
