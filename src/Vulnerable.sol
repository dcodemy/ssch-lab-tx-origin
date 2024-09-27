// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.13;

contract Hackme {
    address public owner;
    event transferEvent(address destination, uint amount);
    event whoisWhoEvent(address destination,address txOrigin, address msgSender);
    event transferCompleted(bool success);
    constructor() {
        owner = msg.sender;
    }
    function add() public payable{}

    function getAmount() public view returns(uint){
        return address(this).balance;
    } 

    function transferTo(uint amount) public {
        require(tx.origin == owner);
        address dest = msg.sender;
        emit whoisWhoEvent( dest, tx.origin,  msg.sender);
        emit transferEvent(dest,amount);
        (bool success, ) = dest.call{value: amount}("");
        emit transferCompleted(success);
        
    }
}