// Solidity program to show
// timestamp dependence vulnerability
pragma solidity ^0.5.0;

contract helloGeeks {
uint public yourAnswer;
function oddOrEven(bool yourGuess) external payable returns (bool)
{
	if (yourAnswer == now % 2 > 0)
	{
	uint fee = msg.value / 10;
	msg.sender.transfer(msg.value * 2 – fee);
	}
}
}
