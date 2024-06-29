
// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.25;

// importing String.sol from openzeppelin library
import "@openzeppelin/contracts/utils/Strings.sol";

// write a smart contract that implements the require(), assert() and revert() statements.

contract ErrorHandling {
    uint public Pool=0;
    uint public Target= 100;

    function donate(uint _i)  public{
        require(Pool<Target,"Target already achieved .");

        Pool+=_i;

        if(Pool>Target){
            string memory message = "Donations should be less than or equal to ";
            string memory num=Strings.toString(Target + _i - Pool);
            revert(string.concat(message , num));
        }

        assert(_i<50);


    }

}
