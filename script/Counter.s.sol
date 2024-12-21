// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Counter, TheOne, Other} from "../src/Counter.sol";

contract CounterScript is Script {
    Counter public counter;
    TheOne public one;
    Other public other;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        counter = new Counter();
        one = new TheOne();
        other = new Other();

        vm.stopBroadcast();
    }
}
