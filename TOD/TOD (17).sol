pragma solidity ^0.5.0;

contract Bank {
    // The contract's balance of ether
    uint256 public balance;

    // A mapping that stores the balances of each user
    mapping (address => uint256) public userBalances;

    // Allows users to deposit ether into their account
    function deposit(uint256 amount) public {
        // Update the user's balance
        userBalances[msg.sender] += amount;

        // Update the contract's balance
        balance += amount;
    }

    // Allows users to withdraw ether from their account
    function withdraw(uint256 amount) public {
        // Check if the user has sufficient balance
        require(userBalances[msg.sender] >= amount, "Insufficient balance");

        // Update the user's balance
        userBalances[msg.sender] -= amount;

        // Update the contract's balance
        balance -= amount;
    }
}