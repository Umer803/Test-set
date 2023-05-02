function overflow(uint fee) {
  uint amount = 100;
  // underflows if fee > 100
  amount -= fee;
  // tries to send a large value
  // and fails on underflow
  msg.sender.send(amount);
}