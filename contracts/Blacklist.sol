pragma solidity ^0.4.17;

import "./BlacklistInterface.sol";
import "./Ownable.sol";

contract Blacklist is BlacklistInterface, Ownable {

    mapping (bytes32 => bool) blacklisted;
    
    /**
     * @dev Add a node to the blacklist.
     * @param node The node to add to the blacklist.
     */
    function blacklist(bytes32 node) public onlyOwner {
        blacklisted[node] = true;
        Blacklisted(node);
    }
    
    /** 
     * @dev Remove a node from the blacklist.
     * @param node The node to remove from the blacklist.
     */
    function unblacklist(bytes32 node) public onlyOwner {
        blacklisted[node] = false;
        Unblacklisted(node);
    }
    
    /**
     *  @dev Return true if the node is permitted, false otherwise. Every nodes, except the blacklisted ones, are permitted.
     *  @param node The node.
     */
    function isPermitted(bytes32 node) public view returns (bool) {
        return !blacklisted[node];
    }
}
