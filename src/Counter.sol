// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter {
    uint256 public number;

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }
    function decimals() external view returns (uint8) {
        return 18;
    }

    function latestAnswer() external view returns (int256) {
        return 1000000000000000000;
    }

    function latestTimestamp() external view returns (uint256) {
        return block.timestamp;
    }

    function latestRound() external view returns (uint256) {
        return block.timestamp;
    }

    function getAnswer(uint256 roundId) external view returns (int256) {
        return 1000000000000000000;
    }

    function getTimestamp(uint256 roundId) external view returns (uint256) {
        return roundId;
    }

    event AnswerUpdated(
        int256 indexed current,
        uint256 indexed roundId,
        uint256 timestamp
    );
    event NewRound(uint256 indexed roundId, address indexed startedBy);
}
