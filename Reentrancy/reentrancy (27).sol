pragma solidity ^0.5.0;

contract Wallet {
    mapping (address => uint) private userBalance;

    function withdraw() public {
        uint withdrawAmount = userBalance[msg.sender];
        (bool success, ) = msg.sender.call.value(withdrawAmount)(""); // An attack can come in at this point
        require(success);
        userBalance[msg.sender] = 0;
    }

}