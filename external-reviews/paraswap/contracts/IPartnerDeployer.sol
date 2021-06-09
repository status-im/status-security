/**
 *Submitted for verification at Etherscan.io on 2021-04-12
*/

/**
 *Submitted for verification at Etherscan.io on 2021-04-02
*/

// File: original_contracts/deployer/IPartnerDeployer.sol

pragma solidity 0.7.5;


interface IPartnerDeployer {

    function deploy(
        string calldata referralId,
        address payable feeWallet,
        uint256 fee,
        uint256 paraswapShare,
        uint256 partnerShare,
        address owner,
        uint256 timelock,
        uint256 maxFee,
        bool positiveSlippageToUser,
        bool noPositiveSlippage
    )
        external
        returns(address);
}

// File: openzeppelin-solidity/contracts/math/SafeMath.sol