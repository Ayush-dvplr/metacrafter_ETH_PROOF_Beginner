# MyToken Smart Contract

This repository contains a simple ERC20-like token contract written in Solidity. The contract includes basic functionalities such as minting and burning tokens, and it stores token balances in a mapping.

## Requirements

1. The contract has public variables that store the details about your coin:
   - Token Name
   - Token Abbreviation
   - Total Supply

2. The contract has a mapping of addresses to balances (`address => uint`).

3. The contract includes a `mint` function that takes two parameters: an address and a value. The function increases the total supply by that number and increases the balance of the specified address by that amount.

4. The contract includes a `burn` function, which works the opposite of the mint function. It takes an address and value as parameters. It deducts the value from the total supply and from the balance of the specified address.

5. The `burn` function includes conditionals to ensure the balance of the sender is greater than or equal to the amount that is supposed to be burned.

## Contract Details

### Variables

- `tokenName`: A string representing the name of the token.
- `tokenAbbrv`: A string representing the abbreviation of the token.
- `totalSupply`: An unsigned integer representing the total supply of the token.
- `balances`: A mapping that stores the balance of each address.

### Functions

- `constructor(string memory _name, string memory _abbrv)`: Initializes the contract with the token name and abbreviation. Sets the total supply to zero.
- `mint(address _receiver, uint _amt)`: Mints new tokens, increases the total supply by the specified amount, and adds the amount to the receiver's balance.
- `burn(address _sender, uint _amt)`: Burns tokens, decreases the total supply by the specified amount, and deducts the amount from the sender's balance. Requires that the sender has a balance greater than or equal to the amount to be burned.

## Usage

### Deploying the Contract

1. Ensure you have a Solidity development environment set up (e.g., Remix, Truffle, Hardhat).
2. Copy the `MyToken` contract code into your development environment.
3. Deploy the contract by specifying the token name and abbreviation.

### Minting Tokens

Call the `mint` function with the receiver's address and the amount of tokens to mint. This will increase the total supply and the balance of the specified address.

### Burning Tokens

Call the `burn` function with the sender's address and the amount of tokens to burn. This will decrease the total supply and the balance of the specified address. Ensure that the sender has enough balance to burn the specified amount.

