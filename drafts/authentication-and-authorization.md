# Authentication and Authorization in Status (Draft WIP)

## Authorization vs Authentication
This is me vs I can have access to this.  Often time these two steps happen at the same time, but they do not have to.

It is important to map out the various places in Status that can potentially hold value, and what mechanisms we have in place to access them. From that we can reason about what options are useful/make sense for the user to implement. 


## Possible Methods
- password
- yubikey (TOTP/FIDO/HID)
- pin
- keycard tap
- fingerprint / facial recognition

## Possible places within Status to check (or define)
- login
- sign txn (per wallet)
- add new wallet
- add new chat (when feature available)
- backup seed phrase
- change sensitive settings
- export data
- access private chat (new feature, but easily possible)

## What is valuable in Status
- private chats
- wallet assets
- data (account) encryption

## Mappings
- account: login
  - **description:** Initial access to an account within the application.  It gives read access to everything (currently) but does not allow for anything that changes within the wallet, as well as changing preferences. 
  - risk: variable
  - **appropriate security measures:** Depends on associated risk and held value.  We should default with password, and hint to change it as value increases. 
- Wallet: sign txn
  - **description:** Signing a transaction in the Status app approves a change to the assets within a specific a wallet account or the user's profile.  The associated risk is dependent upon the assets the wallet account holds, or the control it may have in a given smart contract.
  - **appropriate security measures:** any and all options should be available to secure the wallet account, but default to whatever the account login security measures are.  Depending on the use of the account, a user should be able to remove or add whatever measures they want to desecure or ultra secure the account. 

