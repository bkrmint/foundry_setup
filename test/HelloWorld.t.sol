// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {HelloWorld} from "../src/HelloWorld.sol";

contract HelloWorldTest is Test {
  HelloWorld public helloWorld;

  function setUp() public {
    helloWorld = new HelloWorld("Hello, World!");
  }

  function test_SayHello() public {
    string memory expected = "Hello, World!";
    string memory result = helloWorld.getMessage();
    assertEq(result, expected);
  }
}
