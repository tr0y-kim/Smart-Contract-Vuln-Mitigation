pragma solidity ^0.4.19;

contract integer_overflow_mitigation {
    // taking ideas from Zeppelin solidity module
    // it is recommended to define functions which can neither read the state of blockchain nor write in it as pure instead of constant
    function safeAdd(uint256 x, uint256 y) internal pure returns(uint256) {
        uint256 z = x + y;
        assert((z >= x));
        return z;
    }

    function safeSubtract(uint256 x, uint256 y) internal pure returns(uint256) {
        assert(x >= y);
        return x - y;
    }

    function safeMult(uint256 x, uint256 y) internal pure returns(uint256) {
        uint256 z = x * y;
        assert((x == 0)||(z/x == y));
        return z;
    }

    function safeDiv(uint256 x, uint256 y) internal pure returns (uint256) {
        uint256 z = x / y;
        return z;
    }

}
