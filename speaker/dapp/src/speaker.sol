pragma solidity >=0.5.0;

contract Speaker {
    bytes32 phrase;

    constructor (bytes32 _phrase) public {
        phrase = _phrase;
    }

    function say() public view returns (bytes32) {
        return phrase;
    }

    function setPhrase(bytes32 _phrase) public {
        phrase = _phrase;
    }
}