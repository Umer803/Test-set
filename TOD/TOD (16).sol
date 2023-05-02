pragma solidity ^0.8.0;
contract ImprovedAddressList {
mapping(address => boot) public addresses;
function addAddress() external {
addresses [msg.sender]=true;
function removeAddress( ) external {
require( addresses [msg. sender] ,"Address not found.");
delete addresses [msg.sender];
}
}
