// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.15;

contract ContractOne {
    mapping(address => uint256) public addressBalances;

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    function deposit() public payable {
        addressBalances[msg.sender] += msg.value;
    }
}

contract ContractTwo {
    function deposit() public payable {}

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    function depositOnContractOne(address _contractOne) public {
        ContractOne one = ContractOne(_contractOne);
        one.deposit{value: 10, gas: 100000}();
    }
}
