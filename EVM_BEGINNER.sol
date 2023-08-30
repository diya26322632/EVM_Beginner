// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract BTC_Token {

    string public tokenName = "Bitcoin";
    string public Abbrv = "Btc";
    uint public totalSupply = 10;

    mapping(address => uint) public balances;

    address public owner;

    constructor() {
        owner = msg.sender;
    }

    
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
    
    function getOwner() public view returns (address) {
        return owner;
    }
}
