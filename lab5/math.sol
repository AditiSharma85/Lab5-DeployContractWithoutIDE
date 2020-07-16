//SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract Math {
    //state variables
    uint256 private sum;
    uint256 private diff;

    //constructor
    constructor(uint256 _sum, uint256 _diff) public {
        sum = _sum;
        diff = _diff;
    }

    function addValues(uint256 val1, uint256 val2) public {
        sum = val1 + val2;
        emit addVal(sum, msg.sender);
    }

    function subValues(uint256 val1, uint256 val2) public {
        if (val1 > val2) diff = val1 - val2;
        else diff = val2 - val1;
        emit subVal(diff, msg.sender);
    }

    function Increement(uint256 num1) public pure returns (uint256) {
        return num1++;
    }

    function Decreement(uint256 num1) private pure returns(uint256)  {
        return num1--;
    }

    //events
    event addVal(uint256 indexed number, address indexed caller);
    event subVal(uint256 indexed number, address indexed caller);
}
