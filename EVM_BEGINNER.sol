// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // Public variables
    string public tokenName = "Bitcoin";
    string public Abbrv = "Btc";
    uint public totalSupply = 10;

    // Mapping of addresses to balances
    mapping(address => uint) public balances;

    // Owner address
    address public owner;

    // Constructor to set the owner
    constructor() {
        owner = msg.sender;
    }

    // Modifier to ensure only the owner can execute certain functions
    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    // Mint function
    function mintBtcToken(address _address, uint _value) public onlyOwner {
        totalSupply += _value;
        balances[_address] += _value;
    }

    // Burn function
    function burnBtcToken(address _address, uint _value) public onlyOwner {
        require(balances[_address] >= _value, "Insufficient balance");
        totalSupply -= _value;
        balances[_address] -= _value;
    }

    // Function to get the owner's address
    function getOwner() public view returns (address) {
        return owner;
    }
}
