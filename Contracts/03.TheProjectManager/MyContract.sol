// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract MyContract {
    string public ourString = "Hello world on Earth!";

    function updateOurString(string memory _updateString) public {
        ourString = _updateString;
    }
}
