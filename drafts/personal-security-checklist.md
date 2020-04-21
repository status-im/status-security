# Security Checklist

## Personal Devices
- [ ] Yubikey: Allowed to expense 1 per contributor
- [ ] USB Drives: Not an allowed expense
- [ ] No-Wifi Printer: Not an allowed expense
- [ ] Hardware Wallet: Allowed to expense 1 per contributor

## Personal Procedures
- [ ] Join internal incident channel
    - [ ] turn on notifications

### PC      
- [ ] Get rid of clipboard managers
    - Reasoning [here](https://coinjournal.net/pc-malware-steals-funds-modifying-ethereum-addresses/)
- [ ] Get rid of cloud screenshot auto-upload
- [ ] Get rid of remote viewer
- [ ] Get a password manager (default: bitwarden)
    - [ ] secure with 2FA (YubiKey / Google Auth)
- [ ] Disable unused/infrequently used browser extensions
- [ ] If your computer is old, start fresh
    - [ ] fresh OS install
    - [ ] new computer
- [ ] Do not tamper with the integrity protection of your OS (OSX SIP, Linux App Armor)
    - [ ] Bonus: Get a vm and put your browser/mail client in the vm.
- [ ] Review launch-on-startup software

### Mobile
- [ ] Get Trail of Bits iVerify.
    - [ ] Go through the tutorials and change the settings accordingly.
- [ ] Charge your phone only with a charger that is yours or from someone you trust.
- [ ] Get a phone that supports yubikey plugable/nfc
- [ ] Get a vpn for your phone.
- [ ] Use a trusted messenger app to take synced private notes as messages to yourself if you
 don't want Apple/Google to read them.
- [ ] Store critical contacts only on your simcard
- [ ] Don't download an untrusted apk. Fdroid, Appstore, Playstore, Huawei Store are your
 friends 
- [ ] Make at habit of disabling bluetooth if you don't need it
- [ ] Get a second phone where you install only what's necessary. Candycrush saga waits on the
 other phone for you. 
- [ ] If you root your phone, here be dragons. 

### Online
    Review public information, think about how this can be used to target you or your device

- [ ] Audit cloud software
    - [ ] What is uploading automatically?
        - [ ] 
    - [ ] What is already saved there?
    - [ ] 2FA that shit
    - [ ] Change password if it isn't fresh or from you Password Manager
    - [ ] set up your hardware wallet / yubikey / U2F on it
    - [ ] If this is where you store you backup codes, regenerate them and handwrite / print on no-wifi printer.  Never put them on clouds again.
    - [ ] Audit Social Media accounts (Google, Github, Facebook, Skype, Twitter, etc)

- [ ] Audit Chrome/Brave Settings
    - [ ] Unsandboxed plugin access: Ask when a site wants to use a plugin to access your computer
    - [ ] Location: ask before accessing
    - [ ] Camera: ask before accessing
    - [ ] Microphone: ask before accessing
    - [ ] Flash: Block sites from running flash
    - [ ] Popups: Blocked
    - [ ] Set clear cookies, cache, history, etc to on "on exit"
- [ ] Encrypt all the things
    - [ ] Computer / Laptop
    - [ ] USB Drives
- [ ] Change all the old passwords
    - [ ] use Password Manager generator for new ones
    - [ ] DO.NOT.REUSE.PASSWORDS
- [ ] 2FA all the things
    - [ ] Don't use Authy
    - [ ] turn off _multi-device_
    - [ ] Remove phone number as backup option for ANYTHING

- [ ] authorized apps
    - [ ] remove the ones you don't use / recognize
    - [ ] review permissions on ones you do use
- [ ] Log out normally
- [ ] Remove "application specific passwords" that bypass auth
- [ ] **Google:** Remove phone number and email as backup option
    - [ ] Go to https://myaccount.google.com/security
    - [ ] Scroll down
    - [ ] Change your password.
    - [ ] Click “2 Step Verification”
    - [ ] Set up: Security key (Yubikey), Authenticator app, Backup codes.
    - [ ] Remove and/or do NOT set up: recovery phone or email, google prompt, voice or text message
    - [ ] Print or write the backup codes. Do NOT store in password manager. Do NOT store on computer.
    - [ ] Do not turn on recovery email. If there is a recovery email there, remove it.
    - [ ] Do not turn on recovery phone. If there is a recovery phone there, remove it.
    - [ ] Do not turn on “Google Prompt”
    - [ ] Do not turn on “Voice or Text Message”
    - [ ] At the very bottom, click “Revoke all” for “Devices you trust”
    - [ ] Return to https://myaccount.google.com/security
    - [ ] Under “Recently used devices” remove anything that isn’t your primary phone and computer.
    - [ ] Return to https://myaccount.google.com/security
    - [ ] Review “Apps with access to your account”. Remove anything you aren’t actively using.
- [ ] **Github:** Audit your auth’d apps, turn on 2FA
    - [ ] go [here](https://github.com/settings/applications)
    - [ ] Audit Install Github Apps => Remove anything you aren’t actively using.
    - [ ] Authorized GitHub Apps => Remove anything you aren’t actively using.
    - [ ] Authorized OAuth Apps => Remove anything you aren’t actively using.
    - [ ] 2FA via hardware device
- [ ] **Facebook:** Some of these are best-practices and related to privacy and not security.

    - [ ] Must Do! https://www.facebook.com/settings?tab=security

    - [ ] Turn on “Get alerts about unrecognized logins”
    - [ ] Change your password if you didn’t do it before
    - [ ] Turn on 2FA via Yubikey or Google Auth if you didn’t do it before
    - [ ] **Must Do!** https://www.facebook.com/settings?tab=privacy

        - [ ] Future posts: Friends
        - [ ] Review all posts and things you’re tagged in: On
        - [ ] Limit past posts: Friends
        - [ ] Who can see your friends list: Friends
        - [ ] Who can look you up using email / phone number: Friends
        - [ ] Do you want search engines…: NO!
    - [ ] **Must Do!** https://www.facebook.com/settings?tab=applications
        - [ ] Audit list, remove anything out of date or not actively in use.
    - [ ] **Must Do!** Turn off Profile Picture Login. Holy fucking shit what a security nightmare that “feature” is.

    - [ ] Recommended! Make sure “Trusted Contacts” was set up intentionally

        - This feature to allows you to regain access to your account via trusted friends. Make sure you use this feature very wisely.
    - [ ] Recommended! Make sure “Legacy Contact” was set up intentionally.

    - [ ] Similarly you can have an account transition to someone else upon memorialization (if Facebook receives proof that you’ve died). Make sure it is set up carefully.
    - [ ] Recommended! https://www.facebook.com/ads/preferences/?entry_product=ad_settings_screen
        - [ ] Go to “Your Information” w/ green icon. Toggle all switches OFF
        - [ ] Go to “Ad settings” w/ blue icon. Select: No, No, No one
        - [ ] Click X’s in Your Interests & Advertisers until you get bored
    - [ ] Recommended! https://www.facebook.com/settings?tab=timeline
        - [ ] Who can post on your timeline? Friends
        - [ ] Who can see what others post on your Timeline? Friends
        - [ ] Who can see posts you’re tagged in on your timeline? Friends
        - [ ] When you’re tagged in a post, who do you want to add to the audience Friends
        - [ ] Who sees tag suggestions when photos that look like you are uploaded? No One
        - [ ] Review posts you’re tagged in before the post appears on your timeline? On
        - [ ] Review tags people add to your posts before they appear on Facebook? On
- [ ] **Dropbox / Cloud Storage**
    - [ ] Turn on 2FA
    - [ ] Turn off any out-of-date phones or computers
    - [ ] Audit your https://www.dropbox.com/account/connected_apps

### Miscellaneous
- [ ] OAUTH > Email signup.
    - [ ] When in doubt authorize a service or app that you start using with your google or your
     github account. Don't create an account with your email (especially not with your private
      email!). Then add 2fa!
    - [ ] When you use an account storing sensitive information that you want neither
     Google or Microsoft to know about, contact security so we can set something up for you. 
- [ ] Call your cell provider
    - [ ] Inform them that you work in an industry that has had a number of phone number hacks in the recent months. You are concerned about their ability to protect you and are thinking about moving to a different carrier due to this risk.
    - [ ] Ask them what protections they offer.
    - [ ] Ask them to put a note requiring you to be in-store with your photo-id in order to activate a new device or port your number.
    - [ ] Ask to put a pin on the account.
    - [ ] If you have the option, remove yourself as an authorized user (e.g. if you are on your parent’s plan).
    - [ ] If you have the option, insert “DO NOT PORT!” and “DO NOT ACTIVATE NEW DEVICE OVER PHONE!!!” in any fields you have access to (e.g. your “Phone name”, “Company” field, etc.
    - [ ] Don’t use that phone number for any 2FA anyways. Use a brand new Google voice number that no one knows.
- [ ] move crypto funds from internet accessible areas to hardwallet/air-gapped storage.
    - [ ] Exchanges
    - [ ] Laptop
- [ ] Sign up for Keybase.io
    - [ ] verify profiles
    - [ ] share with at least 3 people
- [ ] Google yourself
    - [ ] Remove personal info you find
    - [ ] Remove Facebook profile indexed by Google in FB settings
    - [ ] Set up Google search alerts for you name, common usernames, etc [here](https://www.google.com/alerts)
- [ ] Look up yourself at haveibeenpwned.com
    - [ ] If anything compromised, take appropriate action
        - [ ] change password or anything that is breached
        - [ ] if bad, consider starting a new email address altogether
- [ ] Bookmark commonly accessed financial sites
    - [ ] mycrypto.com
    - [ ] exchanges
    - [ ] bank sites

## Company-wide
- [ ] Internal incident reporting discord channel
- [ ] Infrastructure monitoring
- [ ] Incident response team and procedure
- [ ] Incident Response phone number 
    - Goes to Corey??
