// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "@aave/core-v3/contracts/flashloan/base/FlashLoanReceiverBase.sol";
import "@aave/core-v3/contracts/interfaces/IPoolAddressesProvider.sol";
import "@aave/core-v3/contracts/interfaces/IPool.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract FlashLoanArb is FlashLoanReceiverBase {
    address payable owner;

    constructor(IPoolAddressesProvider provider) FlashLoanReceiverBase(provider) {
        owner = payable(msg.sender);
    }

    function executeOperation(
        address[] calldata assets,
        uint256[] calldata amounts,
        uint256[] calldata premiums,
        address initiator,
        bytes calldata params
    ) external override returns (bool) {
        // TODO: Implement swap logic with DEX here

        // Approve repayment
        for (uint i = 0; i < assets.length; i++) {
            uint amountOwing = amounts[i] + premiums[i];
            IERC20(assets[i]).approve(address(POOL), amountOwing);
        }

        return true;
    }

    function requestFlashLoan(address[] calldata assets, uint256[] calldata amounts) external {
        POOL.flashLoan(
            address(this),
            assets,
            amounts,
            new uint256[](assets.length),
            address(this),
            "",
            0
        );
    }
}
