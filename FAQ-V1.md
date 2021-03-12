# Frequently Asked Questions

## ENS Names

### What does "intrisic gas too low" mean?
It means you do not have enough ETH or SNT in your Status wallet to register an ENS username. See [this section](###what-do-i-need-to-get-a-username) for an explanation


### What do I need to get a username?
In order to regsiter an ENS username (`<yourname>.stateofus.eth`) you need to have both 10 SNT and a little bit of ETH (for gas) in your Status wallet to make the required Ethereum transaction.  

The name will be unique and yours until you decide to let it go, upon which you will receive your original 10 SNT back into your wallet. 

You can get SNT and ETH in a myriad of ways [LINK HERE]

### Why can't I see someone's ENS username?
A user's registered ENS name takes a while to propagate throughout the network. This propogation has to happen everytime a user updates their name. A change constitutes a user registering a new name, or assigning one of the names a user owns. Currently, a user can own as many ENS usernames as they like, but only broadcast a single ENS username at a given time. 

In most cases, waiting a little while will fix the issue. 

## Wallet

### Can I import a private key?
Yes. You can import accounts from other wallets within Status. Simply navigate to the Status wallet, scroll right on the accounts section and tap the `Add an account` option. From there, you'll have the option to import accounts via a seed phrase or a private key. 

Note that when importing accounts into Status, those accounts are NOT backed up by your initial account seed phrase and will not be regenerated. This means you need to be sure to maintain those secrets to back them up. 

BE SURE TO ALWAYS BACK UP AND STORE THE SEED PHRASE SECURELY

### I restored from my seed phrase, but can't see any of the funds in my wallet, and the address is different.  My beta account was created before March 2018.
We refer to your account as a legacy account, as it was created using a different address derivation algorithm.  We switched it after March to be compatible with other wallets so users could take their account to other applications with ease.

In order to recover the funds on a legacy account, you will need to use a tool created by the Status team to extract the legacy private key (old account) from your seed phrase.

NOTE: DO NOT GIVE YOUR SEED PHRASE TO ANYONE DURING THIS PROCEDURE

Please download the [key-util](https://github.com/status-im/security-utils/tree/master/key-util) tool and follow the instructions on the page to use the `legacySeedToKey` command. If the instructions are unclear, please ask for help in the #support channel of the Status app, or contact security@status.im via email. 

## Chat Rooms

### How can I make a chat room?
You do not need permission to create a public chat room, anyone can do it.  There are a few ways in which you can do this:
1. Click the `+` icon in the chat screen and choose `Join public chat`.  Type in whatever chatroom name you desire.  If that room exists, you will joing it, if it doesn't, you will create it.
2. Type in any chat the name of the chat room you desire with at `#` in front of it, _e.g._ `#my-chatroom-name`.  This will create a link in the chat which can be clicked to take you to that room.

### Where are private group chats?
The current version of private chat groups is derived from Open Whisper Systems' [protocol for Signal](https://signal.org/docs/), but changed for a decentralized context. In other words, it is really private and secure.

The current private group chat is limited to 20, due to the scaling of messages sent with group size. 

If you would like to have privacy in groups larger than this, a decent workaround is to make a public channel with the name of the channel being a shared secret. Only people who know the name of the channel can talk inside of it or read the messages if they are monitoring the network. Meaning the better the secret, the more likely no one is listening.

Of course, we can't know for sure who is or isn't in a public chat room, so we cannot provide any guarantees of privacy with this method. 

### Can Status or anyone else see my messages?
Only the intended recipients can see a message sent by you.  Any infrastructure that passes messages around the network are encrypted, sometimes multiple times, so the servers just see encrypted blobs.  

Even public room chats are encrypted by a symmetric key derived from the name of the chatroom, so those who don't know the name can't read the message either. 

Private 1-1 and Group chats are additionally encrypted with the Signal protocol mentioned earlier. For more information, see the [specifications](https://github.com/status-im/specs/blob/576a7d9b287d4c13a2f9f9d0b9b4109f80133de3/docs/stable/5-secure-transport.md)

## Misc

### How can I import my contacts?
If you are referring to the contacts in your phone, you can't. There is no information we use or store outside of the app that identifies who you are or who you know.  

You will have to establish contact with anyone you wish to speak to inside the Status app. If you have multiple devices that use the same Status account, then you can sync between those devices in the advanced settings of each of the devices that you use. 

### I was auto-updated on android, I don't have my seedphrase from beta, and I can't access my account now.  What do I do?
Some users were auto-upgraded via the app store and had not had the chance to backup their seedphrase or move their assets off the account if they didn't have their seed phrase.

If you are one of these users, we have created a special recovery APK to overwrite the V1 install with the old beta software to give you access to your old account.  

Please contact someone in #support in the Status app or security@status.im via email to request the APK file. Be explicit with your request so we can make sure you need to use it.

This process will not allow you to upgrade to V1.  You will have to delete the application completely and clean install from the app store when you have recovered your account.  

BE SURE TO BACK UP YOUR SEED PHRASE THIS TIME.
