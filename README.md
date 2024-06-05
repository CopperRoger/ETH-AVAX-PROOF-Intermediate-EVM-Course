# Error Handling Smart Contract

This Solidity smart contract demonstrates the use of require(), revert(), and assert() statements for error handling and enforcing conditions within a contract.


## Prerequisites

Solidity compiler version: ^0.8.25

## Overview

The contract includes three functions:

useRequire(uint _i): Uses the require() statement.

useRevert(uint _i): Uses the revert() statement.

useAssert(uint _i): Uses the assert() statement.

Each function illustrates how to handle errors and ensure specific conditions are met within a smart contract.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., ErrorHandling.sol). Copy and paste the following code into the file:

```javascript

// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.25;

// write a smart contract that implements the require(), assert() and revert() statements.

contract ErrorHandling {
    uint public number=0;

    function useRequire(uint _i) public{
        require(_i<10,"input must be less than 10");
        number+=_i;
    }
    function useRevert(uint _i) public{
        number +=_i;
        if(_i>=10){
            revert("input must be less than 10");
        }
    }

    function useAssert(uint _i) public{
        number +=_i;
        assert(number==20);
    }
}

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile ErrorHandling.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "ErrorHnadling" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the sayHello function. Click on the "ErrorHandling" contract in the left-hand sidebar.

## Explaination

### useRequire Function

The require() function is used to validate user inputs and conditions before executing the function logic.

If the condition (_i < 10) is not met, the transaction is reverted, and an error message "input must be less than 10" is returned.

This is useful for checking external inputs and ensuring the contract functions as intended under valid conditions.

### useRevert Function

The revert() function is used to revert the transaction if certain conditions are not met.

It can be used anywhere within the function logic to abort execution and revert the state changes.

Here, if the input _i is greater than or equal to 10, the transaction is reverted with the error message "input must be less than 10".

### useAssert Function

The assert() function is used to check for internal errors and validate invariants.

It should be used to catch situations that should never occur, as it consumes all remaining gas if the condition fails.

In this example, after adding _i to number, the function asserts that number equals 20. If this condition fails, it indicates a serious bug or unexpected condition, and the transaction is reverted.
