// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/CollateralizedExchange.sol";

contract CollateralizedExchangeTest is Test {
    CollateralizedExchange public colEx;
    address alice = makeAddr("alice");
    // function setUp() public {
    //     colEx = new CollateralizedExchange();
    //     colEx.setNumber(0);
    // }

    function test_listItem() public {
        bytes32 hsh = bytes32("ipfshash");
        vm.prank(address(alice));
        colEx.listItem{value: 100 wei}(hsh, 100, address(0));
        assertEq(address(colEx).balance, 100);
    }
}


