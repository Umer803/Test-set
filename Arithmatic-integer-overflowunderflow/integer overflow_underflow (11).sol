uint total = 0;

function addProductToTotal(uint256 a, uint256 b) public returns (uint256 total) {
    uint256 product = a * b;

    // some pseudo-code as conditional
    (if product overflowed) ? total += type(uint256).max : total += product;

}