// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.18;

import "ds-test/test.sol";
import "./Vm.sol";

contract UnixTimeTest is DSTest {
    Vm constant vm = Vm(HEVM_ADDRESS);

    function testFormatUnits() public {
        assertEq(vm.formatUnits(10**18, 18), '1.000000000000000000');
        assertEq(vm.formatUnits(1.1234*10**18, 18), '1.123400000000000000');
        assertEq(vm.formatUnits(1234567, 6), '1.234567');
        assertEq(vm.formatUnits(100 ether, 18), '100.000000000000000000');
    }
}
