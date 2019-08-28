pragma solidity >=0.5.0;

contract Speaker {
    uint256 phrase;

    constructor (uint256 _phrase) public {
        phrase = _phrase;
    } 

    function say() public view returns (uint256) {
        return phrase;
    }
}