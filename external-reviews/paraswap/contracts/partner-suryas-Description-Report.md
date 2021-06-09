 Sūrya's Description Report

 Files Description Table


|  File Name  |  SHA-1 Hash  |
|-------------|--------------|
| /home/petty/GitHub/status-im/status-security/external-reviews/paraswap/contracts/partner.sol | 835268921946f0873cb8f287391dab0dba15cfd9 |


 Contracts Description Table


|  Contract  |         Type        |       Bases      |                  |                 |
|:----------:|:-------------------:|:----------------:|:----------------:|:---------------:|
|     └      |  **Function Name**  |  **Visibility**  |  **Mutability**  |  **Modifiers**  |
||||||
| **IPartnerDeployer** | Interface |  |||
| └ | deploy | External ❗️ | 🛑  |NO❗️ |
||||||
| **SafeMath** | Library |  |||
| └ | add | Internal 🔒 |   | |
| └ | sub | Internal 🔒 |   | |
| └ | sub | Internal 🔒 |   | |
| └ | mul | Internal 🔒 |   | |
| └ | div | Internal 🔒 |   | |
| └ | div | Internal 🔒 |   | |
| └ | mod | Internal 🔒 |   | |
| └ | mod | Internal 🔒 |   | |
||||||
| **Context** | Implementation |  |||
| └ | _msgSender | Internal 🔒 |   | |
| └ | _msgData | Internal 🔒 |   | |
||||||
| **Ownable** | Implementation | Context |||
| └ | <Constructor> | Internal 🔒 | 🛑  | |
| └ | owner | Public ❗️ |   |NO❗️ |
| └ | renounceOwnership | Public ❗️ | 🛑  | onlyOwner |
| └ | transferOwnership | Public ❗️ | 🛑  | onlyOwner |
||||||
| **IPartner** | Interface |  |||
| └ | getPartnerInfo | External ❗️ |   |NO❗️ |
||||||
| **Partner** | Implementation | Ownable, IPartner |||
| └ | <Constructor> | Public ❗️ | 🛑  |NO❗️ |
| └ | getReferralId | External ❗️ |   |NO❗️ |
| └ | getFeeWallet | External ❗️ |   |NO❗️ |
| └ | getFee | External ❗️ |   |NO❗️ |
| └ | getPartnerShare | External ❗️ |   |NO❗️ |
| └ | getParaswapShare | External ❗️ |   |NO❗️ |
| └ | getTimeLock | External ❗️ |   |NO❗️ |
| └ | getMaxFee | External ❗️ |   |NO❗️ |
| └ | getNoPositiveSlippage | External ❗️ |   |NO❗️ |
| └ | getPositiveSlippageToUser | External ❗️ |   |NO❗️ |
| └ | getPartnerInfo | External ❗️ |   |NO❗️ |
| └ | getChangeRequest | External ❗️ |   |NO❗️ |
| └ | changeFeeRequest | External ❗️ | 🛑  | onlyOwner |
| └ | changeWalletRequest | External ❗️ | 🛑  | onlyOwner |
| └ | changePositiveSlippageToUser | External ❗️ | 🛑  | onlyOwner |
| └ | confirmChangeRequest | External ❗️ | 🛑  | onlyOwner |
| └ | cancelChangeRequest | External ❗️ | 🛑  | onlyOwner |
||||||
| **PartnerDeployer** | Implementation | IPartnerDeployer |||
| └ | deploy | External ❗️ | 🛑  |NO❗️ |


 Legend

|  Symbol  |  Meaning  |
|:--------:|-----------|
|    🛑    | Function can modify state |
|    💵    | Function is payable |
