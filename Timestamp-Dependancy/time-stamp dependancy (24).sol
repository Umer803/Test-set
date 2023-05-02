// Solidity program to show
// timestamp dependency vulnerability
pragma solidity ^0.4.15;

contract GFG{
uint256 constant private salt = block.timestamp;

function random(uint Max) constant private returns (uint256 result)
{
	//get the best seed for randomness
	uint256 x = salt * 100 / Max;
	uint256 y = salt * block.number/(salt % 5) ;
	uint256 seed = block.number / 3 + (salt % 300) + Last_Payout + y;
	uint256 h = uint256(block.blockhash(seed));

	// Random number between 1 and Max
	return uint256((h / x)) % Max + 1;
}
}
