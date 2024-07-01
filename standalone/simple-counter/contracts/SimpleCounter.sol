// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract SimpleCounter {
    uint256 public number;

    constructor(uint256 _initialNumber) {
        number = _initialNumber;
    }

    event NumberIncremented(uint _updatedNumber);
    event NumberDecremented(uint _updatedNumber);
    function increment() public {
        number += 1;
        emit NumberIncremented(number);
    }

    function decrement() public {
        number -= 1;
        emit NumberDecremented(number);
    }
}
