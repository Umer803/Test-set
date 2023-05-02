
pragma solidity 0.6.0;

contract IntegerOverflow {
    uint8 public num;
    function setNumber(uint8 _num) public {
            num = _num;
    }
    function addToNumber(uint8 _num) public {
        num += _num;
    }
}
