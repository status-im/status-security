# Security Checklist

People in the crypto industry are particularly targeted by hackers & malware. When joining Status as a Core Contributor, make sure you follow the following recommendations to ensure your safety & the security of the organization as a whole.

## General recommendations

Those recommendations are valid for most Core Contributors who are not particularly exposed.

### 💻 Hardware

#### 🖥️📱 Computers & mobiles devices
- [ ] Be aware of unwanted additions & customizations some manufacturers practice in the PC & Android world https://en.wikipedia.org/wiki/Pre-installed_software,
- [ ] Be aware of the various End-of-life/Guaranteed security update policy for each manufacturer & device, especially in the Android world. For example [Google Pixel](https://support.google.com/pixelphone/answer/4457705?hl=en) & [Nokia](https://www.nokia.com/phones/en_int/security-updates) are known to offer fair update policies. Some manufacturers do not. Once a device do not receive security updates, do not use it anymore,
- [ ] Password protect your BIOS/UEFI.

#### 🔑 Hardware authentication devices

We recommend the use of hardware authentication devices supporting the FIDO2 protocols such as the [Yubico Yubikey](https://en.wikipedia.org/wiki/YubiKey)

Status allows to expense 1 authentication device per contributor.

#### 📟 Hardware wallets

- [ ] For important crypto accounts, we recommend the use of hardware wallets such as the [Ledger](https://www.ledger.com/) or [Trezor](https://trezor.io/),

Status allows to expense 1 hardware wallet per contributor.

Always buy hardware security devices from the official website of the vendor (a lot of fake devices are sold on Amazon).

#### 🖨️ Printers

When printing recovery codes & very sensitive information, 
it is important to do so on a printer that has no wifi as the history can be hijacked and the printed documents can be recovered and reprinted.


If you decide to sell your hardware, make sure all your settings & data have been securely removed from it.

### 🐧 Operating System

- [ ] Whether you use Windows, macOS, Linux, iOS or Android, it is always a good idea to start fresh with a clean install.
- [ ] Keep your OS up-to-date,
- [ ] Make sure your OS install is fully encrypted. 

### 📦 Software

Favor software installed from an app store with automated update mechanisms.

- [ ] Do not use clipboard managers ([why](https://coinjournal.net/pc-malware-steals-funds-modifying-ethereum-addresses/)),
- [ ] Do not use cloud screenshot auto-upload,
- [ ] Do not use remote viewer,
- [ ] Review launch-on-startup software.

#### 🌐 Web Browsers

- [ ] Remove unused browser extensions,
- [ ] Disable infrequently used browser extensions,
- [ ] Bookmark commonly accessed critical websites such as banks, decentralized finance apps, etc,
- [ ] Disable the Autofill feature.

### 🗝️ Authentication

- [ ] Use a password manager, such as [Bitwarden](https://bitwarden.com),
- [ ] Do not reuse passwords across applications & services,
- [ ] Enable notifications/alerts for breaches of your email on [have i been pwned?](https://haveibeenpwned.com/) or [Firefox Monitor](https://monitor.firefox.com/)
- [ ] Do not use phone number/SMS authentication as 2FA or backup option,
- [ ] Enable Multi-Factor Authentication (MFA) whenever possible using either:
  - [ ] A hardware authentication device such as a Yubikey,
  - [ ] A software-based authenticator such as [Google Authenticator](https://en.wikipedia.org/wiki/Google_Authenticator).

### ☁️ Online services & cloud

- [ ] Do not backup directly highly critical data such as seed phrases,
- [ ] Regularly review the Connected/Authorised/Installed/OAuth Apps section on services such as Google, [Github](https://github.com/settings/installations) & cloud storage.

### 💽 Backups

- [ ] Whether you backup on a hardware device or the cloud, make sure they are encrypted. 

### 🕵🏻 Privacy

- [ ] Be careful with what you publish on social media,
- [ ] Review carefully social media settings, for eg Facebook [Security](https://www.facebook.com/settings?tab=security), [Privacy](https://www.facebook.com/settings?tab=privacy) [Applications](https://www.facebook.com/settings?tab=applications) & [Timeline](https://www.facebook.com/settings?tab=timeline) settings,
- [ ] Consider making use of [Email aliases](https://www.privacytools.io/#email-alias) for some non-critical accounts,
- [ ] Consider the software & service listed on https://www.privacytools.io/ as alternative to the popular ones.

### 📋 Others & General recommendations

- [ ] If you are unsure about something, just ask the security team on dedicated channels,
- [ ] Follow the `#security` channel in Logos Discord server and in the Status app to keep yourself up-to-date, make use of those channels if necessary.


## Going further 

Those recommendations are intended for Core Contributors whose role & tasks could make them more exposed.

- [ ] Consider the use of separated systems on a virtual machine, partition, or hardware for sensitive data & tasks according to [this guide](https://github.com/status-im/status-security/blob/master/drafts/linux-recommendations.md),
- [ ] Use a [Good](https://www.privacytools.io/#vpn) VPN provider,
- [ ] Regularly reset or reinstall your devices & operating systems to start from a clean slate.
