# Setup a secure Linux system

## Why

Free Software & Linux enable most of the [Status Principles](https://our.status.im/our-principles/) 

Those principle include Security, Privacy and Censorship resistance.

### 🛡️ Security 

It is generally believed that Linux is a very secure operating system. 
The security will depend largely on the distribution & setup. 

Some Linux solutions distributions [have achieved a very high level of security standards & certifications](https://access.redhat.com/articles/2918071)

### ㊙️ Privacy 

Linux distributions have far greater respect for privacy than the competition from Microsoft, Google or Apple.
Most Linux distributions will never require any form of identification to be installed, used or to access their app store.

### 🤐 Censorship resistance 

Apple, Google & Microsoft operating systems, along with their respective software distribution channels (App Store, Google Play & Microsoft Store) may censor specific applications. 

This is much more difficult or even impossible on Linux.

## How

### Install Linux in a Virtual Machine (VM)

Running Linux in a Virtual Machine is the best way to get a feel of what to expect.
For some use cases, it could also be acceptable to operate long term by running Linux in a VM.
But be aware from a security point of view, a VM and guest operating system will always somehow inherit the security of the host.
Meaning that if your main host system is compromised, you should ultimately consider the guess insecure too. 

The most popular choice for virtualization is the free VirtualBox solution https://www.virtualbox.org/


### Buy a laptop with Linux pre-installed

Some specialized computer vendors sell privacy-preserving laptops pre-installed with Linux. The two most popular ones being: 

- System76 https://system76.com/ & its Pop OS! distribution
- Purism Librem https://puri.sm/products/ & its PureOS distribution
- Tuxedo https://www.tuxedocomputers.com/en

Some traditional computer manufacturers now also sell laptops with Linux preinstalled:

- Dell https://www.dell.com/en-us/work/shop/overview/cp/linuxsystems
- Lenovo https://www.lenovo.com/us/en/d/linux-laptops-desktops/

### Install Linux on an existing computer

#### Hardware compatibility

In general, most Intel/AMD based computers will support Linux pretty well nowadays.

You can probably find reports on most computer models in the Linux Hardware project database https://linux-hardware.org/?view=computers

#### Linux Distributions for beginners

If you are new to Linux you will most likely start with one of the following distributions as they are very easy to install & use:

- Ubuntu Desktop 
  - Download: https://ubuntu.com/download/desktop 
  - Installation walkthrough https://ubuntu.com/tutorials/install-ubuntu-desktop
- Fedora Workstation 
  - Download https://getfedora.org/en/workstation/download/

The installation process should not be more difficult than installing Apple macOS or MS Windows. Most choices to make will be about the language, locals, timezone, keyboard & target installation disk.
The copy on the disk is usually very fast nowadays (~10 20 minutes)  

**Attention**
You should be careful to make sure full disk encryption is enabled during the installation:

- For Fedora: Installation Destination screen > Encryption > ☑ Encrypt my data
![](https://docs.fedoraproject.org/en-US/fedora/f34/install-guide/_images/anaconda/StorageSpoke.png)
- For Ubuntu: Installation Type screen > Advanced features > ☑ Encrypt the new Ubuntu installation for security
![](https://ubuntucommunity.s3-us-east-2.amazonaws.com/original/2X/4/46e9947d7b4ad3e96487d81cf61c327485d56b5a.png)

#### Other Linux Distributions 

Other popular Linux distributions includes:
- Debian https://debian.org/
- CentOS https://www.centos.org/centos-stream/
- RedHat Enterprise Linux https://developers.redhat.com/blog/2016/03/31/no-cost-rhel-developer-subscription-now-available
- Linux Mint https://linuxmint.com/
- Elementary OS https://elementary.io/ 

and many more https://distrowatch.com/

##### Getting familiar

Most Linux distribution desktop environment is based on Gnome. You should first [get familiar with its UI](https://forty.gnome.org/) and [common applications](https://apps.gnome.org/)  

#### Software sources

- 🟢 Linux distribution official repositories
  - Examples: Debian or Fedora repositories
  - Trust: very high, with usually fast updates
  - Software usually sourced: base Operating System, Firefox, Chromium
- 🟡 Third-party repositories
  - Examples: RPM Fusion, Flathub, Google repo, Microsoft repo
  - Trust: Lower, updates may vary
  - Software usually sourced: Brave, Google Chrome, Bitwarden
- 🟡 Browser extensions
  - Examples: Chrome web store, Firefox add-ons
  - Trust: Low, Depends
  - Updates: Automatic
  - Software usually sourced: Metamask, Bitwarden
- 🟡 Third party websites
  - Examples: Status website, Ledger website
  - Trust: Depends
  - Updates: not automatic usually (AppImage)
  - Software usually sourced: Status Desktop, Ledger Live, Bitwarden

##### The case of the Ubuntu Snap store

By default Ubuntu Software use the Snap Store which has an unconventional model with a large selection of software easily available but of various quality.

It is very convenient but the security model & controls applied are rather weak.

If you use Ubuntu, try to limit yourself to software where **Canonical** is the verified 🟢 developer or where you can verify a third-party vendor indeed control the package.

#### Applications distribution 

##### Distribution package managers

Most applications on Linux are distributed as `.rpm` (on Fedora & Redhat derived systems) or `.deb` (on Ubuntu or Debian derived systems).
Most likely you won't have to deal with those as the installation & update are transparent in the [Software application](#updates) 

For most software, you should first look if it is available in this format through your distribution official repository and Gnome Software.

🟠 Those packages require admin or `root` privileges to be installed.

##### AppImage

AppImage is a popular format for distributing portable software on Linux without admin privilege. It is a bit similar to macOS `.dmg` image files.

Applications such as Status Desktop and LedgerLive Desktop are distributed in this format on Linux.

You will have to make the `.AppImage` files executable to run them, as explained in the [Quickstart](
https://docs.appimage.org/introduction/quickstart.html#ref-how-to-run-appimage)

![](https://docs.appimage.org/_images/make-executable.gif)

🟢 AppImage do not require admin or `root` privileges to be used.

#### Flatpak

Flatpak is an emerging format & ecosystem supported by default on many Linux distributions such as Fedora, Centos, Clear Linux, Elementary, Pop OS!, PureOS, etc.

🟢 Flatpak do not require admin or `root` privileges to be installed & some sandboxing features are available.

##### Snap

Snap is an emerging format & ecosystem supported by default on many Linux distributions such as Ubuntu or Manjaro

🟢 Snap do not require admin or `root` privileges to be installed  & some sandboxing features are available.

#### Updates 

Gnome Software & Ubuntu Software will indicate when software updates are available.

![Gnome Software updates tab](https://apps.gnome.org/assets/screenshots/org.gnome.Software/ss-updates.png) 

Depending on the types of updates, a computer restart may or may not be required to apply them.

On Fedora to apply quickly security updates:
`sudo dnf install -y --security`

#### Common applications

##### Web browsers

Try to stick to Firefox or Chromium because they are usually provided, hardened & updated by the Linux distribution.

🐛 Be aware that if you want to use your Ledger with Metamask, since recently Firefox is your only option https://github.com/MetaMask/metamask-extension/issues/11219 

Please do not install any extensions besides things you really need (like Metamask)

Bookmark important URLs (Uniswap, etc.) once you have verified them.

##### Status Desktop

Status Desktop is available for Linux as an AppImage
https://github.com/status-im/status-desktop/releases

You will be in charge to download the latest AppImage when a new version is released.

##### LedgerLive Desktop

LedgerLive is distributed as an AppImage and available on the Ledger official website https://www.ledger.com/ledger-live/download

You will be in charge to update LedgerLive within the application itself.

### More things you can do

#### Recommended

- Verify the downloaded Linux image file
  - Fedora https://getfedora.org/security/
  - Ubuntu https://ubuntu.com/tutorials/how-to-verify-ubuntu
- Password protect the BIOS/UEFI
- Disable Intel ME / AMD PSP
- Network considerations & VPN https://wiki.gnome.org/Projects/NetworkManager/VPN 
- Automatic updates https://docs.fedoraproject.org/en-US/quick-docs/autoupdates/ 

#### Optional

- Review services & firewall settings
- Use an application Firewalls like OpenSnitch https://github.com/evilsocket/opensnitch 
- Consider an immutable OS like Fedora Silverblue https://docs.fedoraproject.org/en-US/fedora-silverblue/ 
- Sandbox application you do not fully trust with Firejail https://github.com/netblue30/firejail
- Use Flatseal if you are using Flathub https://github.com/tchx84/Flatseal 
- Consider hardening Web browsers specific settings
- Setup Yubikey for PAM login https://developers.yubico.com/yubico-pam/ 
- Restrict USB device allowed with USBGuard https://github.com/USBGuard/usbguard 
- Use an Intrusion Detection System (IDS) like AIDE https://github.com/aide/aide 
- Use an antivirus like ClamAV https://www.clamav.net/ 
- Automate the setup with Ansible

