## TL;DR
Status is a secure messaging app and crypto wallet built with state of the art technology. User privacy and security is our highest priority; our maximum public bug bounty program reflects that. 

The Bug Bounty Program directly serves Status .im's [principles](https://status.im/about/) by helping us to keep our users safe. In that spirit, by taking part in our bug bounty program, you contribute to everyone's security & privacy in the Status ecosystem. 

NOTE: Status is a transparent organization. Everything we do is open source. This is also true for our discussions and  processes, where we strive to allow the Ethereum ecosystem as much insight in what we do as possible. Therefore, a lot of our infrastructure and assets is _intentionally_ publicly accessible.  **Please make sure you have read the out of scope section before starting to work on our program.**

##  Response Targets
Status.im will make the best effort to meet the following response targets for hackers participating in our program:

* Time to first response (from report submit) - 3 business days
* Time to triage (from report submit) - 5 business days
* Time to bounty (from triage) - 30 business days
* Time to resolution (from triage) - 30 business days

We'll keep you informed about our progress throughout the process.



##  Disclosure Policy
* Do not discuss this program or any vulnerabilities outside of the program without explicit consent or before public disclosure.
* Follow HackerOne's [disclosure guidelines](https://www.hackerone.com/disclosure-guidelines).



## Bonuses
* Please fill out the report template diligently and provide as much information as possible in a compressed format. As a researcher, you know best what is wrong with the code you attack, so if you provide helpful information to speed up our mitigation efforts, we might pay out an additional bounty for your report.
* We work as a *purple team*, so if you're able to speed up our mitigation efforts, Status.im might invite you to temporarily join our Discord/Status channels to work with our engineering team on mitigation. If you're invited, you'll receive bonuses over the HackerOne platform.



## Program Rules
* Please provide detailed reports with reproducible steps. If the report is not precise enough to reproduce the issue, it will not be eligible for a reward.
* Submit one vulnerability per a report, unless you need to chain vulnerabilities to provide impact.
* When duplicates occur, we only award the first report received (provided that we can fully reproduce).
* Multiple vulnerabilities caused by one underlying issue will be awarded one bounty.
* Researchers may not, and are not authorized to engage in any activity that would be disruptive, damaging, or harmful to Status.im brands or its users. This includes social engineering ((e.g., phishing, vishing, smishing), physical security, and denial of service attacks against users, employees, or Status.im as a whole. Social engineering is prohibited.
* Make a good faith effort to avoid privacy violations, destruction of data, and interruption or degradation of our service. Only interact with accounts you own or with the explicit permission of the account holder.
* If you gain access to sensitive information --such as personal information, credentials -- as part of vulnerability, it must not be saved, stored, transferred, accessed, or otherwise processed after the initial discovery. 
* Only reports submitted to this program and against assets in scope will be eligible for a monetary award.
* Researchers may not publicly disclose vulnerabilities (sharing any details whatsoever with anyone other than authorized Status.im or HackerOne employees) prior to public disclosure
* Only use authorized accounts so as not to compromise the privacy of our users inadvertently
When attempting to demonstrate root permissions with the following primitives in a vulnerable process, please use the following commands:
Read: cat /proc/1/maps
Write: touch /root/<your H1 username>
Execute: id, hostname, pwd (though, technically cat and touch also prove execution)
* Minimize the mayhem. Adhere to program rules at all times. **Do not use automated scanners/tools - these tools include payloads that could trigger state changes or damage production systems and data.**
* Before causing damage or potential damage: Stop, report what you've found and requested additional testing permission
* Previous bounty amounts are not considered a precedent for future bounty amounts.


## Rewards
Please see the structured bounty table. Our bounty table provides general guidelines, and all final decisions are at the discretion of Status.im.


## Out of scope vulnerabilities

Please do not engage with infrastructure hosted on infra.status.im and all subdomains as any scanning and testing activity is treated as an incident. Violations lead to an exclusion from our program.

For all other vulnerabilities, please consider (1) attack scenario/exploitability, and (2) security impact of the bug. The following issues are considered out of scope:

* Current issues within the Status.im Github repositories (will be regarded as duplicates)
* Clickjacking on pages with no sensitive actions.
* Unauthenticated/logout/login CSRF.
* Attacks requiring MITM or physical access to a user's device.
* Any physical attacks against Status property or data centers
* Previously known vulnerable libraries without a working Proof of Concept.
* Comma Separated Values (CSV) injection without demonstrating a vulnerability.
* Missing best practices in SSL/TLS configuration.
* Any activity at the network or application layer that could lead to the disruption of our service (DoS), especially any form of spam (network level or client side)
* Content spoofing and text injection issues without showing an attack vector/without being able to modify HTML/CSS
* Vulnerabilities on subdomains of *.status.im
* Vulnerabilities only affecting users of outdated or unpatched browsers and platforms
* Issues in software or hardware not under Status.im control: 
Vulnerabilities that have their root cause in an upstream dependency (e.g., React-Native) might be applicable, but have their severity lowered by at least 1 grade (e.g., Critical -> High, Medium -> Low))

Additionally we have a list of known issues tagged [security](https://github.com/status-im/status-react/issues?q=is%3Aopen+is%3Aissue+label%3Asecurity) you should review before reporting for all our assets on GitHub. The following vulnerability types have already been reported and triaged, and won't be fixed. These issues will be closed as Not Applicable:

* URL Spoofing - React-Native-Webview - Any issue where an attacker can spoof the URL in Status Android or iOS mobile App.



## [Status.im Feedback](https://docs.google.com/forms/d/1neYv8gi3kFbtY8fNbp3v3f0meLd1BZ9zHxDdVG9ptOg/edit)
* We want to ensure that we are running a fun and engaging bug bounty program. For that reason, we would love to hear your feedback on how we can improve our program. If there is anything we can do additional to help facilitate your testing, please let us know by filling out the form above.

## Treasure Map

#### 1. Mobile Apps

**1.1. High-Level Tech Stack**

|      |       Android        |         iOS          |
| ---- |:--------------------:|:--------------------:|
| Clojurescript | platform independent | platform independent |
| re-frame framework | platform independent | platform independent |
| reagent | platform independent | platform independent |
| react native | platform independent | platform independent | 
| react native bindings | java | objective-c |
| status-go | golang, cross compiled to a c library used with JNI | golang, cross compiled to a c library used with objective-c |

**1.2. Threat Model**

A threat model is essentially a structured representation of all the information that affects the security of an application. In essence, it is a view of the application and its environment through Status's security team glasses.

On the other hand, you can see the high-level diagram on the threat model to understand architectural details.

Our threat model is created on diagrams.net and stores on GitHub. To review our threat model, please follow the [link](https://github.com/status-im/status-security/blob/master/threat-modeling/Mobile-Wallet/DFD-wallet-L00).

**1.3. Assets**

**1.3.1. Private Messenger**

**- What is this?**

Its most essential responsibilities are to manage chats, messages, and contacts of the user.

**- How should it work?**

It should keep the data safe, encrypted on disk when the user is not logged in. 
It should process incoming messages and store them on a disk.

**- What to look for?**

Problems with encryption, DOS caused by some particular kind of message, crashes.

**- Tech Stack**

Golang

**- Related assets**

status-go

**1.3.2. Secure Crypto Wallet**

**- What is this?**

A wallet for your assets, compatible with the Ethereum blockchain and ERC20 tokens

**- How should it work?**

It should keep your assets safe, make sure that any transaction is authorized

**- What to look for?**

Compromise of the private key or seed phrase. Spoofing of a transaction (-recipient), tricking the user into signing a transaction, etc.

**- Tech Stack**
status-go (golang), status-react


**1.3.3. Web3 Browser**

**- What is this?**

A browser that enables the user to use dapps

**- How should it work?**

Mostly like a normal browser, but users should be able to access dapps with it, by connecting their wallet

**- What to look for?**

Unsecure content being loaded, URL spoofing, etc


**- Tech Stack**
Android webview, react native webview, status-react stack



## Safe Harbor
Any activities conducted in a manner consistent with this policy will be considered authorized conduct, and we will not initiate legal action against you. If a third party initiates legal action against you in connection with activities conducted under this policy, we will take steps to make it known that your actions were conducted in compliance with this policy.



Thank you for helping keep Status.im and our users safe; happy hacking!


