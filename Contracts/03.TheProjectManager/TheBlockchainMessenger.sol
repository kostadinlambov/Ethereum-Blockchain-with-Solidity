//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract TheBlockchainMessenger {
    uint256 public changeCounter;
    string public message;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function updateMessage(string memory _newMessage) public {
        if(msg.sender == owner){
            message = _newMessage;
            changeCounter++;
        }
    }
}
