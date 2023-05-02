function withdraw(uint _amount) {

      require(balances[msg.sender] – _amount > 0);

      msg.sender.transfer(_amount);

      balances[msg.sender] -= _amount;

}