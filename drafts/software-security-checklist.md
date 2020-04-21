---
tags: security
---

# Software Security Checklist paper notes 
Resources
- [2002 - Software Security Checklist for the Software Life Cycle](https://www.semanticscholar.org/paper/Software-Security-Checklist-for-the-Software-Life-Gilliam-Wolfe/83f2224ef56cb4b7d317de1cd74c250246694eeb)

## 5 foci of Software Security Assessment Instrument (SSAI)
- Software Security Checklist (SSC)
  - Phase 1: checklist for dev life-cycle
  - Phase 2: checklist for external release
- vulnerability matrix
  - categorize vulnerabilities and exposures
- Flexible Modeling Framework (FMF)
  - verification of requirements
- Property-Based Tester (PBT)
  - testing vulnerabilities
- collection of Security Assessment Tools (SATs)
  - description and explanation of their use for assessment

## Items for Potential Consideration and Inclusion in a SSC (internal)
1. Introduce a walkthrough, security audit review or a formal security review in every phase of the software life cycle development
2. Establish security metrics during the software life cycle and a trace matrix for security requirements
3. Determine stakeholders, and elicit and specific associated security requirements for each stakeholder
4. Determine context and potential usage of software product along with the operating environment and specify requisite security requirements
5. Make available to programmers, developers, reviewers and test teams the vulnerabilities and potential exposures associated with programming languages and operating systems before the architectural design phase
6. Set up security parameters for access to services such as ftp service where anonymous ftp is allowed but with write only and no read or list tot he incoming directory and read only for outgoing directory
7. Check for sources of software security risks such as inconsistencies in requirements and in design, reusable programes and other shrink-wrap software.  Use of requirements tools, modeling tools etc. can aid in this area
8. Avoid the use of unsafe routines such as `sprintf()`, `strcpy/cat()`, `gets` and `fgets` in coding.
9. Check the security of any middleware in the program
10. Check for architectural-specific vulnerabilities and how data flows through the code.
11. Check for implementation-specific vulnerabilities such as Race Conditions, randomness problems, and buffer overflows.
12. DO NOT allow programmer backdoors or unauthorized access paths that bypass security mechanisms
13. Avoid storing secrets like passwords in the code or use weak encryption schemes
14. Identify all points in the source code where the program takes input from users
15. Identify all points int he source code where the program takes input from another program or un-trusted source
16. Investigate all sources from which input can enter the program such as GUI, network reads, etc.
17. Check API calls to security modules or interfaces
18. Investigate secure connections.  Verify that they actually are secure and connect as indicated to the systems to which they are intended to connect
19. Investigate softwre built-in extensibility features
20. Review software complexity and look for alternatives to reduce complexity
21. Investigate the security of the data when passed from appliation servers to databases
22. Avoid default or other improper configurations that may open the door to attackers
23. Default to "highest security" needed, and require validation and approval for deviations
24. Establish tools to be used for various stages of the life cycle that will be used for assessing security
25. Perform security testing for unit and system integration
26. Potentially, establish a security risk rating criteria and document the rating of the software product within the organization.  using a risk assessment tool can benefit this area.

## Items for Potential Consideration and Inclusion in a SSC (external)
1. Does the software include IP addresses and subnet ranges?
    - 1.1 If yes, are these IP addresses sensitive?
    - 1.2 Can these addresses be used to gain information that may pose a risk to the organization?
2. Does the software/program include Host names?
    - 2.1 If yes, are these host names sensitive?
    - 2.2 Does the release of these host names prose a risk to the organization?
3. Are there any settings that can be exploited?
    - 3.1 If yes, can any of these settings be modified or deleted?
    - 3.2 If settings can not be modified or deleted, would they pose a risk to the organization?
    - 3.3 If settings can be modified or deleted, would they pose a risk to the organization?
4. Is there any non-sensitive information in the software that can be used to probe secrets?
    - 4.1 If yes, can non-sensitive information be manipulated to expose sensitive information?
    - 4.2 Can non-sensitive data be altered and modified so as to pose risk?
5. Is there any Material that might expose company information such as Customer lists?
    - 5.1 If yes, are Customers lists protected under a privacy policy?
    - 5.2 Does the release of Customers lists pose a risk?
    - 5.3 DOes the release of Cusomters lists do harm to the customers?
6. Is any of the data restricted?
    - 6.1 If yes, is the data controlled by security mechanisms such as RBAC?
    - 6.2 If yes, are their security restrictions on the transfer of restricted data?
    - 6.3 Is the restricted data transmited over open networks?
      - 6.3.1 Is the restricted data encrypted before transmission?
7. etc...