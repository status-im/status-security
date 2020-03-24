# Security Process Using Github Issues (v1)
This document outlines the process of using Github issues to coordinate security issues of a given project.

## People in the Process
- `Vendor`: The organization or individual responsible for disclosing issues of an assessment
- `Discloser`: The individual submitting information
- `Status Security Coordinator`: The individual coordinating the assessment process, as defined by the Status organization
- `Status`: The entity that pays for the assessment and employees responding to it

## Should you use Github issues?
 Before submitting any issues, the Discloser should have already engaged in a conversation with the Status Security Coordinator about appropriate methods of disclosure for a given project. This should be described in the SECURITY.md file within any given repository. If it is notor this file does not exist, then follow the advice of this repository's README.md. If the Discloser is still unsure, then please request guidance at security@status.im. 

 A Disclosor may choose to use [this](https://github.com/status-im/status-security/blob/master/pgp-keys/security%40status.im.asc) PGP key for secure communications. 

## Process
Once the Discloser is aware that Github issues are the appropriate methodology of disclosure, the following procedure is **RECOMMENDED****:
- A github issue **MUST** be created for every individual assessment discovery
- a `difficulty` label **MUST** be added to every issue. Note this is to track _difficulty of exploiting the vulnerability_.
    - The following options are available:
        - `difficulty:low`
        - `difficulty:medium`
        - `difficulty:high`
        - `difficulty:undetermined`
    - The assessment of difficulty **SHOULD** be subjectively chosen by the Discloser
- a `severity` label **MUST** be added to every issue
    - The following options are available:
        - `severity:informational`
        - `severity:does-not-spark-joy`
        - `severity:low`
        - `severity:medium`
        - `severity:high`
        - `severity:critical`
        - `severity:undetermined`
      - Use [this](https://www.first.org/cvss/calculator/3.0) resource to help guide which label is appropriate
- a `status` label **MUST** be added to every issue
    - The following options are available:
        - `status:information-needed`
        - `status:reported`
        - `status:in-progress`
        - `status:awaiting-review`
        - `status:wont-fix`
        - `status:resolved`
- a `type` label **MUST** be added to every issue
    - The following options are available:
        - `type:docs`
        - `type:bug`
        - `type:arch`
        - `type:enhancement`
- a Status owner **SHOULD** be named as decided by the Status Security Coordinator to every issue
- a Vendor owner **SHOULD** be named as decided by the Vendor to every issue
- The details of any given issues are as follows:
  - a description of the issue **MUST** be included that outlines the specifics of the disclosure
  - an exploitation scenario **SHOULD** be included that outlines an example of the potential impact
  - a recommendation **SHOULD** be included that describes how to mitigate the issue
  - references **MAY** be included that expand on the details and surrounding information of the issue

**The disclosure process **MUST** be agreed upon before engagement is to begin.

## Meta
The keywords “**MUST**”, “**MUST NOT**”, “**REQUIRED**”, “**SHALL**”, “**SHALL NOT**”, “**SHOULD**”, “**SHOULD NOT**”, “**RECOMMENDED**”, “**MAY**”, and “**OPTIONAL**” in this document are to be interpreted as described in [RFC 2119](https://www.ietf.org/rfc/rfc2119.txt).