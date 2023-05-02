pragma solidity 0.6.0;

contract IntegerUnderflow {

    uint8 public num;
    function setNumber(uint8 _num) public {
        num = _num;
    }
    function subtractFromNumber(uint8 _num) public {
        num -= _num;
    }

}
