pragma solidity ^0.4.24;

import "./Ownable.sol";

contract Pomodoro is Ownable {

    constructor() public {
    	
    }
    
    function testSend() public payable  {
        require(msg.value >= 1);
    }
    
    function withdraw() public onlyOwner {
        owner.transfer(address(this).balance);
    }
    
    function viewTotal() public view returns (uint) {
        return address(this).balance;
    }
    
}
