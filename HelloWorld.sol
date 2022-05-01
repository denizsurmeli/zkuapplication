// SPDX-License-Identifier: GPL-3.0
/// @dev Solidity version >=0.8.11
pragma solidity ^0.8.11;

/// @title A storage contract for single unsigned integers.
/// @author Deniz Surmeli
contract HelloWorld
{
    /// @dev Storage variable that we will modify.
    uint256 number;


    /// @dev Store a number into the contract.
    /// @param num number to be stored.
    function storeNumber(uint256 num) public {
        number = num;
    }

    /// @dev Retrieve the stored number in the contract.
    /// @return An unsigned integer.
    function retrieveNumber() public view returns(uint256){
        return number;
    }

}