pragma solidity >=0.5.0;

contract MultiOwnerProvider {
    mapping(address => mapping(address => bool)) isPermitted;

    function setOwner(address who, address owner) public {
        require(who != owner, 'cannot become owner of itself');
        require(who == msg.sender, 'not authorised');
        require(!isPermitted[who][owner], 'caller is already the owner');
        isPermitted[who][owner] = true;
    }

    function unsetOwner(address who, address owner) public {
        require(who != owner, 'not authorised');
        require(who == msg.sender, 'not authorised');
        require(isPermitted[who][owner], 'caller is already not the owner');
        isPermitted[who][owner] = false;
    }

    function isOwner (address who, address owner) public view returns(bool) {
        return isPermitted[who][owner];
    }
}