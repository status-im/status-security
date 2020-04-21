# Project Self-Questioning Checklist

## Starting a Project
- [ ] What is a quick overview
- [ ] Where is the Specification Documentation
- [ ] Does it hold money?
    - [ ] how much?
    - [ ] who controls it?
    - [ ] how complex is its flow?
    - [ ] is it locked up for a period of time ever?
- [ ] How many smart contracts should it take to complete?
    - [ ] How complex is their interaction?
- [ ] Is this project core to your business model?
    - [ ] Does it control finances?
    - [ ] Does it influence user adoption?
    - [ ] Does it lock up significant portions of your assets?
    - [ ] Is it unique to your business?
- [ ] How many users will it have?
    - [ ] Upon its deployment to mainnet?
    - [ ] Over time?
        - [ ] How does its footprint on the blockchain grow?
- [ ] How many types of users will it have?
    - [ ] Have you detailed their abilities within the project explicitely?
- [ ] How complex is the front end?
    - [ ] Is the FE's sole purpose to interact with the contract(s)?
- [ ] Does it intergrate with other things?
- [ ] Will it need to be upgraded?
    - [ ] How often
    - [ ] How complex is the migration to (a) new contract(s)?
- [ ] Does it have novel/complex cryptography or math functions?

## Wrapping up a Project
- [ ] Have you run analyzers on the contracts?
    - [ ] Which ones?
    - [ ] Where are the resutls and their response write-ups?
- [ ] Has the specification sheet been updated throughout the project?
    - [ ] How often?
- [ ] Have you performed any STRIDE sessions to hunt for vulnerabilities?
    - [ ] Where are the write-ups for these?
- [ ] Has it been tested on a testnet?
    - [ ] What are the contract details for these deployments?
- [ ] Has it gone through an internal stress test?
- [ ] Is the front-end completed?
- [ ] Do you have an upgrade or succession plan in place?
- [ ] Is front-running a potential problem?

---

## Notes from [ToB Article](https://blog.trailofbits.com/2018/04/06/how-to-prepare-for-a-security-audit/)
These notes are used to prepare for a formal audit, and should be performed before engaging an external professional.  By not doing them, you are wasting time and money.
- [ ] Have all compiler warnings been addressed?
    - [ ] Are you using the latest compiler to check for errors?
    - [ ] What compiler will you use to deploy the contract and why?
- [ ] Have tests been updated to the latest version of the code?
    - [ ] How much code coverage do you have?
- [ ] Has all unused code and libraries been eliminated from the codebase?
- [ ] Have all functions been commented to explain what their intended use is?
- [ ] Have all complex code blocks been commented to describe what they do?
- [ ] Have all complicated tests been commented to describe what they are testing, and their expected results (both positive and negative)?