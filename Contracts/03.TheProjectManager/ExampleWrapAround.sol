//SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract ExampleWrapAround {
    uint8 public myUint8 = 250;

    function decrement() public {
        unchecked {
            myUint8--;
        }
    }

    function increment() public {
        unchecked {
            myUint8++;
        }
    }
}
