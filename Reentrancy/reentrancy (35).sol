function payMe(address account) public {
  uint amount = getAmount(account);
  // XXX: vulnerable
  if (!account.send(amount))
    throw;
  balance[account] -= amount;
}