contract TimeStamp {
uint public prevBlockTime;


constructor() payable {}

function guess() external payable {
require(msg.value == 2 ether);
require(block.timestamp != prevBlockTime);

prevBlockTime = block.timestamp;

if (block.timestamp % 7 == 0) {
(bool sent, ) = msg.sender.call{value: address(this).balance}("");
require(sent, "Failed to send Ether");



