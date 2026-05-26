// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title SimpleStore
/// @notice Minimal testnet contract for AI x Web3 School Week 1 practice.
contract SimpleStore {
    uint256 public value;

    event ValueChanged(uint256 oldValue, uint256 newValue, address indexed caller);

    constructor(uint256 initialValue) {
        value = initialValue;
    }

    function setValue(uint256 newValue) external {
        uint256 oldValue = value;
        value = newValue;
        emit ValueChanged(oldValue, newValue, msg.sender);
    }
}
