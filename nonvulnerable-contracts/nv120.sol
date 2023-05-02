pragma solidity ^0.8.4;

contract StaticArrayTest {
    string[3] numbers = ["one", "two", "three"];
    
    function getNumbers() external {
        string[3] memory mynumbers = ["one", "two", "three"];
    }
}