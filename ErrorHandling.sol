
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
