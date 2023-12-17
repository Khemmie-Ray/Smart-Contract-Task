// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Task {
    address admin;
    uint a;
    uint b;
    uint sum;

     constructor(){
        admin = msg.sender;
    }

     modifier onlyAdmin { 
        require (admin == msg.sender, "only admin has access");
        _;
    }

    function addNum(uint _a, uint _b) public onlyAdmin {
        assert(_a <= 10);
        if(_b <= 5) {
            revert("Input must be greater than 5");
        }
        sum = _a + _b;
    }

    function getSum() public view returns (uint) {
        return sum;
    }
}