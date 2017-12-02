pragma solidity ^0.4.17;

import "./BlacklistInterface.sol";
import "./Ownable.sol";

contract Blacklist is BlacklistInterface, Ownable {

    mapping (bytes32 => bool) blacklisted;

    function blacklist(bytes32 node) public onlyOwner {
        blacklisted[node] = true;
        Blacklisted(node);
    }

    function unblacklist(bytes32 node) public onlyOwner {
        blacklisted[node] = false;
        Unblacklisted(node);
    }

    function isBlacklisted(bytes32 node) public view returns (bool) {
        return blacklisted[node];
    }
}
