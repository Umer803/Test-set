pragma solidity >=0.4.0 <0.7.0;

interface Animal {
    function eat() public virtual returns (bytes32);
}