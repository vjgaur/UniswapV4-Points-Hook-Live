//SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import {BaseHook} from "v4-periphery/src/base/hooks/BaseHook.sol";
import {ERC20} from "solmate/tokens/ERC20.sol";
import {CurrencyLibrary, Currency} from "v4-core/types/Currency.sol";
import {PoolKey} from "v4-core/types/PoolKey.sol";
import {BalanceDeltaLibrary, BalanceDelta} from "v4-core/types/BalanceDelta.sol";
import {IPoolManager} from "v4-core/types/IPoolManager.sol
import {Hooks} from "v4-core/libraries/Hooks.sol";

//Hook Contract = PointsHook as te ERC20 contract for "POINTS" token as well
contract PointsHook is BaseHook ERC20{

    constructor{

    }

}