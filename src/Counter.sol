// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

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

    function handleAction(
        address user,
        uint256 totalSupply,
        uint256 userBalance
    ) external {}

    function BASE_CURRENCY() external view returns (address) {
        return address(0x0);
    }

    /**
     * @notice Returns the base currency unit
     * @dev 1 ether for ETH, 1e8 for USD.
     * @return Returns the base currency unit.
     */
    function BASE_CURRENCY_UNIT() external view returns (uint256) {
        return 100000000000000000;
    }

    /**
     * @notice Returns the asset price in the base currency
     * @param asset The address of the asset
     * @return The price of the asset
     */
    function getAssetPrice(address asset) external view returns (uint256) {
        return 1;
    }
}

contract TheOne is ERC20 {
    constructor() ERC20("THE", "TheOne") {}

    function mint(address account, uint256 value) public {
        _mint(account, value);
    }
}

contract Other is ERC20 {
    constructor() ERC20("OTH", "Other") {}

    function mint(address account, uint256 value) public {
        _mint(account, value);
    }
}
