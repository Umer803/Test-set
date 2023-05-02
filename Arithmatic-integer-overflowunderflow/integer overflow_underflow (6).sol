function transfer(address _to, uint256 _amount) {

   // Check if sender has sufficient balance 

   require(balanceOf[msg.sender] >= _amount);

   // Add and subtract new balances 

   balanceOf[msg.sender] -= _amount;

   balanceOf[_to] += _amount;