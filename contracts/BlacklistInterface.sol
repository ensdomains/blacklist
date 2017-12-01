pragma solidity ^0.4.17;

interface BlacklistInterface {

    event Blacklisted(bytes32 indexed node);
    event Unblacklisted(bytes32 indexed node);

    function blacklist(bytes32 node) public;
    function unblacklist(bytes32 node) public;
    function isBlacklisted(bytes32 node) public view returns (bool);

}
