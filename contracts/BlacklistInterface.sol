pragma solidity ^0.4.17;

interface BlacklistInterface {

    event Blacklisted(bytes32 indexed node);
    event Unblacklisted(bytes32 indexed node);
    
    /** @dev Add a node to the blacklist.
     *  @param node The node to add to the blacklist.
     */
    function blacklist(bytes32 node) public;
    
    /** @dev Remove a node from the blacklist.
     *  @param node The node to remove from the blacklist.
     */
    function unblacklist(bytes32 node) public;
    
    /** @dev Return true if the node is allowed, false otherwise. Every nodes, except the blacklisted ones, are allowed.
     *  @param node The node.
     */
    function isAllowed(bytes32 node) public view returns (bool);

}
