pragma solidity ^0.8.0;

contract AdAuction {
    uint256 private amount;
    address private owner;
    
    //Change Ownership and amount
    function makeAd() external payable {
        require(msg.value > amount, "Pay more to make changes");
        amount = msg.value;
        owner = msg.sender;
    }
    
    //function to get owner
    function getOwner() external view returns (address) {
        return owner;
    }
    
    //function to get Amount
    function getAmount() external view returns (uint256) {
        return amount;
    }
}
