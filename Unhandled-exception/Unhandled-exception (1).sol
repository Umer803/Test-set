// allows user to withdraw funds
function withdraw(address account) public {
  uint amount = getAmount(account);
  balance[account] -= amount;
  account.send(amount); // could silently fail
}