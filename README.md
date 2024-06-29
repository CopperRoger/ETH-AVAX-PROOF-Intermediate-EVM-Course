# Error Handling Smart Contract

This Solidity smart contract demonstrates the use of require(), revert(), and assert() statements for error handling and enforcing conditions within a contract.


## Prerequisites

Solidity compiler version: ^0.8.25

## Overview

The ErrorHandling smart contract allows users to donate to a pool. It includes error handling mechanisms to ensure that:

- Donations do not exceed a set target.
- Individual donations are less than a specified amount.


## Features

- Target Limit: Ensures the total pool does not exceed the target.
- Individual Donation Limit: Ensures individual donations are less than a specified amount.
- Error Handling: Implements require(), assert(), and revert() for robust error checking and handling.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Install dependencies:
Ensure you have the OpenZeppelin library installed:

npm install @openzeppelin/contracts

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., ErrorHandling.sol). Copy and paste the following code into the file:

```javascript

// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.25;

// Importing String.sol from OpenZeppelin library
import "@openzeppelin/contracts/utils/Strings.sol";

contract ErrorHandling {
    uint public Pool = 0;
    uint public Target = 100;

    function donate(uint _i) public {
        require(Pool < Target, "Target already achieved.");

        Pool += _i;

        if (Pool > Target) {
            string memory message = "Donations should be less than or equal to ";
            string memory num = Strings.toString(Target + _i - Pool);
            revert(string.concat(message, num));
        }

        assert(_i < 50);
    }
}


```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile ErrorHandling.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "ErrorHnadling" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the sayHello function. Click on the "ErrorHandling" contract in the left-hand sidebar.

## Usage

### Contract Details

- Pool: Keeps track of the total donations.
  
- Target: The maximum donation limit (set to 100).

### Functions

- donate(uint _i): Allows users to donate to the pool.
 - Uses require() to check if the target has already been achieved.
 - Uses revert() to ensure donations do not exceed the target.
 - Uses assert() to ensure individual donations are less than a specified amount.
