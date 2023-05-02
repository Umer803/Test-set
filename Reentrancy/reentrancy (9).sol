contract Vault {
    mapping(address => uint) balances;

    function deposit() public payable {
        balances[msg.sender] = msg.value;
    }

    function withdraw(uint amount) public {
        require(balances[msg.sender] >= amount);
        msg.sender.transfer(amount); // At this point, the caller's code is executed and calls withdraw again!
        balances[msg.sender] -= amount;
    }
}