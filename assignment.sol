// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/

contract MyToken {

    // Public variables to store token details
    string public tokenName;
    string public tokenAbbrv;
    uint public totalSupply;

    // Mapping to store balances of addresses
    mapping(address => uint) public balances;

    // Constructor to initialize the token details
    constructor(string memory _name, string memory _abbrv) {
        tokenName = _name;
        tokenAbbrv = _abbrv;
        totalSupply = 0;
    }

    // Function to mint new tokens
    function mint(address _receiver, uint _amt) public {
        totalSupply += _amt;
        balances[_receiver] += _amt;
    }

    // Function to burn tokens
    function burn(address _sender, uint _amt) public {
        if(balances[_sender]>=_amt){
            totalSupply -= _amt;
            balances[_sender] -= _amt;
        }
        
    }
    //Function to get total supply
    function getTotalSupply() public view returns (uint){
        return totalSupply;
    }
}
