//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract WillThrow {
    error ThisIsACustomError(string, string);

    function aFunction() public pure {
        // require(false, "Error message");
        // assert(false);
        revert ThisIsACustomError("Text 1", "text message 2");
    }
}

contract ErrorHandling {
    event ErrorLogging(string reason);
    event ErrorLogCode(uint256 errorCode);
    event ErrorLogBytes(bytes lowLevelData);

    function catchError() public {
        WillThrow will = new WillThrow();
        try will.aFunction() {
            //here we could do something if it works
        } catch Error(string memory reason) {
            emit ErrorLogging(reason);
        } catch Panic(uint256 errorCode) {
            emit ErrorLogCode(errorCode);
        } catch (bytes memory lowLevelData) {
            emit ErrorLogBytes(lowLevelData);
        }
    }
}
