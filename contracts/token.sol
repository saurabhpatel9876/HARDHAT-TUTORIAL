//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 <0.9.0;
contract Token{
    string public name = "Hardhat token";
    string public symbol = "HHT";
    uint public TotalSupply = 10000;
    address public owner;
    mapping(address=>uint)  balances;
    constructor() {
        balances[msg.sender]= TotalSupply ;
        owner = msg.sender;
    }
    function transfer(address to, uint amount) public {
            require(balances[msg.sender] >= amount, "Not enough tokens");
        balances[msg.sender] -= amount; //balances[msg.sender]=balances[msg.sender]-amount;
        balances[to] += amount;
    }
    function balanceOf(address account) external view returns (uint256) {
        return balances[account];
    }

    }