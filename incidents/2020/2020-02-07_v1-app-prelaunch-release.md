---
title: V1 app store pre-launch post-mortem
tags: postmortem, security, transparency
---

# Publishing Status V1 post-mortem - Draft v0.1

## Date
2020-01-07

## Author
Corey Petty

## Summary

The Status app was published to v1.0.0 on the Android Play Store before it was intended. 

## The Impact
At the point of writing this, there were 

This affects users in a multitude of ways, and violates the Status principles in the following ways:
- **principle 1** - 

### Scope

## Trigger

## Resolution
- Removal of the application from production in both iOS and Android Play app stores.

## Action Items
| Action Item | Type | Owner | Reference | Notes |
| ----------- | ---- | ----- | --------- | ----- |
| Development of Release Process | prevent | ??? | **TODO** | description here |
| Remove publication from app stores | mitigate | Andre | **DONE** | descripton here |
| Figure out auto-update process | prevent | jakubgs | **DONE** | see [Jakub's recovery process](#jakub-building-auto-update-recovery) | 
| ... another item | mitigate/prevent | ?? | **TODO** | descripton here |
| explore future beta channel options | improve | andre | **TODO** | descripton here |

## Lessons Learned
### What went well
- 

### What went wrong
- 500+ users were upgraded from beta to V1 potentially without knowledge of potential breakage and time to back up appropriate material
- There was a lack of coordination on the release process.

### Where we got lucky
- we have a relatively low userbase

## Timeline

( All times EDT )

| Date-Time  | Description |
| ---------- | ----------- |
| 2020-02-05 13:21 | Apple submission set to `In Review` |
| 2020-02-05 17:21 | Apple submission set to `Pending Developer Release` |
| 2020-02-06 07:29 | @andre announces on Discord that app was approved and is live |
| 2020-02-06 07:38 | Android set to `Ready for Sale` by `me@andremedeiros.info` |
| 2020-02-06 07:46 | @jakubgs asks in Discord if Android auto-updates and is quickly confirmed that it does by @cammellos |
| 2020-02-06 07:7:47 | @cammellos says in Discord that `that probably will break a few apps` |
| 2020-02-06 07:7:56 | @andre confirms on Discord that apple app store listing is live |
| 2020-02-06 07:57 | @petty states in Discord that `we should warn users as best we can to make sure not to upgrade before they know they have their keys` |
| 2020-02-06 08:10 | @rachel asks on Discord if it is possible for an automatic update on Android from beta to public version |
| 2020-02-06 08:22 | @andre states in Discord that `To make changes to the app name, category or privacy policy, create a new app version. All other changes will be immediately available on the App Store.` |
| 2020-02-06 08:23 | @andre suggests in Discord to push a v1.0.1 with small fixes discussed in previous hour or so based on new discoveries in Android App Store policies |
| 2020-02-06 08:35 | @rachel notices on Discord that the app name still has `beta` in the title, @jakubgs confirms and looks up, gives info: `"Same. There's no re-uploading - you just change the state of the release." "Important INFO about ROLL-OUT TIME. If you published your app to beta-channel breforehand and then click "RELEASE TO PRODUCTION" button, do not expect it will be roll out immediately, it will still take up to 24 HOURS to be live. "`|
| 2020-02-06 08:45 | Discord chatter discovers that being int he beta program shows `beta` in the title |
| 2020-02-06 08:54 | after a few requests, @andre in Discord says that he has removed the old YouTube video but it takes a while to update the page |
| 2020-02-06 08:58 | @jakubgs in Discord asks for people to take a look at status.im site changes to reflect V1 |
| 2020-02-06 08:58 | @jakubgs asks @andre in Discord if we should start rolling out nightlies again, as they are currently pointing to beta binaries |
| 2020-02-06 09:01 | @arnetheduck says in Discord that he noticed status was published, and asked what would happen if he upgrades from current beta install, @jakubgs informs him he needs to backup seed phrase, uninstall, and install V1, @arnetheduck then asks people to assume he's just a user that has auto-update enabled in play store |
| 2020-02-06 09:10 | @arnetheduck says in Discord: `@andre er, well, the app was available on the app store before - presumably some users installed it - normies have auto-update installed, and now I guess they will be faced with.. potential explosions? I don't know how the versioning is handled on release. if I was doing a completely incompatible release that doesn't include migration code, I'd consider releasing it as a new application and renaming the old application to "obsolete" or some such`, @cammellos responds with `I thought that was the plan, or that the app would be seen as a completely new one once we leave the "beta" program`, @andre confirms that that was his assumption as well |
| 2020-02-06 10:11 | @andre asks in Discord to avoid mentioning release until comms are published |
| 2020-02-06 10:31 | @rachel announces in Discord: `buttt if they've been auto updated they'll have to recover + if seed phrase is lost, it's lost.  post is live: https://our.status.im/announcing-status-version-1-0/` |
| 2020-02-06 10:36 | @andre finds that existing beta users can be affected by auto-update, @rachel mentions that this can lead to loss of funds potentially, and that she thinks we need damage control comms for usres who are forcibly upgraded |
| 2020-02-06 10:43 | @andre announces he's making the app unavailble in all countries for now, which should stop rolling update |
| 2020-02-06 11:03 | Android set to `Developer Removed From Sale` by `me@andremedeiros.info` |
| 2020-02-06 11:05 | @fizzgig says `It's unfortunate, I'm sorry to point this out because everyone has been working so hard, the app looks fantastic and feels solid, but this should be a valuable lesson to those who argued against doing a migration strategy. I hope it's clear we can't have these things happen moving forward. Accidents happen, and thank you everyone for your response.` |

## Other Mitigation Actions

### Jakub building auto-update recovery
conversation taken from `core-infra` of discord:
```
jakubgsToday at 8:57 AM
well, there's no PR
I just rebuilt and old APK
for 0.13.1
with new build number
so someone can get that APK
and install it on top of 1.0.0
and recover their old account
which used a different db schema/file
http://status-im.ams3.digitaloceanspaces.com/StatusIm-200211-140000-7f38c5-release.apk
this is the APK
because it's versionCode is higher than that of v1.0.0 we accidentally released a user that has lost access to their old account can recover it installing that APK over the v1.0.0
```