address public owner;
function withdraw(address receiver) public {
require(tx.origin == owner);
receiver.transfer(this.balance);
