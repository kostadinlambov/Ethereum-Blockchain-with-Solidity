//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract ExampleViewPure {
    uint256 public myStorageVariable;

    function setMyStorageVariable(uint256 _newVar) public returns (uint256) {
        myStorageVariable = _newVar;
        return _newVar;
    }

    function getMyStorageVariable() public view returns (uint256) {
        return myStorageVariable;
    }

    function getAddition(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }
}
