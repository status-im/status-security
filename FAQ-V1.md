- [Frequently Asked Questions](#frequently-asked-questions)
  - [ENS Names](#ens-names)
    - [What do I need to get a username?](#what-do-i-need-to-get-a-username)
    - [Why can't I see anyone's ENS username?](#why-cant-i-see-anyones-ens-username)
  - [Wallet](#wallet)
    - [Can I import a private key?](#can-i-import-a-private-key)
    - [I restored from my seed phrase, but can't see any of the funds in my wallet, and the address is different.  My beta account was created before March 2018.](#i-restored-from-my-seed-phrase-but-cant-see-any-of-the-funds-in-my-wallet-and-the-address-is-different-my-beta-account-was-created-before-march-2018)
  - [Misc](#misc)
    - [How can I import my contacts?](#how-can-i-import-my-contacts)
    - [Why am I not getting push notifications?](#why-am-i-not-getting-push-notifications)
    - [I was auto-updated on android, I don't have my seedphrase from beta, and I can't access my account now.  What do I do?](#i-was-auto-updated-on-android-i-dont-have-my-seedphrase-from-beta-and-i-cant-access-my-account-now-what-do-i-do)

# Frequently Asked Questions

## ENS Names

### What do I need to get a username?
In order to regsiter an ENS username (`<yourname>.stateofus.eth`) you need to have both 10 SNT and a little bit of ETH (for gas) in your Status wallet.  

The name will be unique and yours until you decide to let it go, upon which you will receive your original 10 SNT back into your wallet. 

You can get SNT and ETH in a myriad of ways [LINK HERE]

### Why can't I see anyone's ENS username?
If you are not seeing ENS Usernames from people, then that probably means you upgraded from beta or a Release Candidate without deleting the application first.  

There is a bug with the migration, and you will need to delete the application totally, and do a clean install from the app store.  MAKE SURE TO BACK UP YOUR SEED PHRASE FIRST IF YOU HAVEN'T YET.

In order to maintain the current information in your app (profile, contacts, chat history, etc), we recommend loading the account on another phone, and [syncing the devices](LINK HERE) before deleting the application and doing a clean install.  Otehrwise, you'll have to start over with finding your contacts and chats you would like to be in. 

Your funds and ENS registrations will be safe if you have your seed phrase backed up. 

## Wallet

### Can I import a private key?
No, that feature is not available yet.  Currently, you can only start an account from a seed phrase.  You can bring a seed phrase to Status, or you can generate your own within the app.  

BE SURE TO ALWAYS BACK UP AND STORE THE SEED PHRASE SECURELY

### I restored from my seed phrase, but can't see any of the funds in my wallet, and the address is different.  My beta account was created before March 2018.
We refer to your account as a legacy account, as it was created using a different address derivation algorithm.  We switched it after March to be compatible with other wallets so users could take their account to other applications with ease.

In order to recover the funds on a legacy account, you will need to use a tool created by the Status team to extract the legacy private key (old account) from your seed phrase.

NOTE: DO NOT GIVE YOUR SEED PHRASE TO ANYONE DURING THIS PROCEDURE

Please download the [key-util](https://github.com/status-im/security-utils/tree/master/key-util) tool and follow the instructions on the page to use the `legacySeedToKey` command. If the instructions are unclear, please ask for help in the #support channel of the Status app, or contact security@status.im via email. 

## Misc

### How can I import my contacts?
If you are referring to the contacts in your phone, you can't. There is no information we use or store outside of the app that identifies who you are or who you know.  

You will have to establish contact with anyone you wish to speak to inside the Status app. 

### Why am I not getting push notifications?
In the current application, there are no push notifications.  We do not use standard methods for push notifications because those are reliant upon either Google or Apple servers and require identifying information that goes against our privacy principles. Yell at them.

In the future, we will have Android push notifications that operate by running as a service in the background of the app.  We have tested an intial implementation of this, and it only minimally impacts battery life.

We have not figured out a way to do this in Apple devices yet, as they do not allow for background services.

### I was auto-updated on android, I don't have my seedphrase from beta, and I can't access my account now.  What do I do?
Some users were auto-upgraded via the app store and had not had the chance to backup their seedphrase or move their assets off the account if they didn't have their seed phrase.

If you are one of these users, we have created a special recovery APK to overwrite the V1 install with the old beta software to give you access to your old account.  

Please contact someone in #support in the Status app or security@status.im via email to request the APK file. Be explicit with your request so we can make sure you need to use it.

This process will not allow you to upgrade to V1.  You will have to delete the application completely and clean install from the app store when you have recovered your account.  

BE SURE TO BACK UP YOUR SEED PHRASE THIS TIME.

