# MyToken Solidity Smart Contract
This is a basic Solidity smart contract for creating and managing a custom token called "MyToken". The contract includes functions for minting and burning tokens, as well as storing token details.

## Token Details
Token Name: Bitcoin

Token Abbreviation: Btc

Total Supply: 10

## Usage
### Mint Tokens
The mint function allows you to mint (create) new tokens and allocate them to a specific address.

### Function Signature:

solidity

`function mintBtcToken(address _address, uint _value) public
_address: The address to which the new tokens will be allocated.
_value: The amount of tokens to mint and allocate.`
This function increases the total supply of the token by _value and adds _value tokens to the balance of the specified address.

## Burn Tokens
The burn function allows you to burn (destroy) tokens, reducing the total supply and the balance of a specific address.

### Function Signature:

solidity

`function burnBtcToken(address _address, uint _value) public
_address: The address from which tokens will be burned.
_value: The amount of tokens to burn.`
This function first checks if the balance of the specified address is greater than or equal to _value. If the condition is met, it reduces the total supply by _value and deducts _value tokens from the balance of the specified address.

## Example
To mint 5 tokens to the address 0x123...456:

solidity

`MyToken tokenContract = MyToken(address_of_deployed_contract);
tokenContract.mint(0x123...456, 5);
To burn 3 tokens from the address 0x123...456:`

solidity

MyToken tokenContract = MyToken(address_of_deployed_contract);
tokenContract.burn(0x123...456, 3);
## License
This project is licensed under the MIT License.

##Author
Diya
