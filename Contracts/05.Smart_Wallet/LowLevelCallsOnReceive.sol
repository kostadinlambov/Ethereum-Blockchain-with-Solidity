// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.15;

contract ContractOne {
    mapping(address => uint256) public addressBalances;

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    receive() external payable {
        addressBalances[msg.sender] += msg.value;
    }
}

contract ContractTwo {
    function deposit() public payable {}

    function depositOnContractOne(address _contractOne) public {
        (bool success, ) = _contractOne.call{value: 10, gas: 100000}("");
        require(success);
    }
}
