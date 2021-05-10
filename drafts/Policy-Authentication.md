# Authentication Policy
This document details the policies around the various authentication mechanisms within the Status ecosystem. 

NOTES:
- a ~~markthrough~~ refers to a standards guideline that does not apply to Status

## Memorized Secrets (Passwords)
- Current (relevant) [NIST](https://pages.nist.gov/800-63-3/sp800-63b.html) Standards Guidelines
  - memorized secret guidelines is [Section 5.1](https://pages.nist.gov/800-63-3/sp800-63b.html#sec5)
  - SHALL be minimum 8 characters if chosen by user
  - ~~SHALL be minimum 6 characters if chosen randomly by a Credential Service Provider (CSP) and MAY be entirely numeric~~
    - ~~CSP SHALL use an approved [random bit generator](https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-90Ar1.pdf)~~
  - A verifier SHOULD allow for at least 64 characters in length
  - All printable ASCII characters as well as space SHOULD be acceptable
  - Unicode SHOULD be acceptable, each Unicode code should be counted as a single character
  - If Unicode is accepted, a [normalization process](https://unicode.org/reports/tr15/) SHOULD be applied
  - A verifier MAY replace multiple spaces as a single space
  - a verifier SHALL NOT truncate secrets
  - A verifier SHALL NOT prompt user to use specific types of information, _e.g._ "favorite pet" questions
  - A verifier SHALL compare prospective secrets against [a list]() that contains values known to be commonly-used, expected, or compromised
    - if found, a verifier SHALL advise chosing a different password
  - a verifier SHOULD offer guidance to the user, such as [password strength meters](https://www.ndss-symposium.org/ndss2014/programme/very-weak-very-strong-analyzing-password-strength-meters/)
  - A verifier SHALL implement rate-limiting mechanism to limit number of failed authentication attempts
  - A verifier SHOULD NOT impose composition rules
  - A verifier SHOULD NOT require regular password changes
    - but SHOULD impose a password change if an indicator of compromise is detected
  - A verifier SHOULD permit "paste" functionality for entering memorized secret
  - A verifier SHOULD offer option to display the secret
    - they MAY choose to show each character in cleartext as it is entered for a short time
  - A verifier SHALL use approved encryption and an authenticated protected channel when requesting memorized secrets
  - A verifier SHALL store memorized secrets in a form that is resistant to offline attacks. 
  - The password-hash salt SHALL be at least 32-bits in length and chosen arbitrarily
  - For PBKDF2, the iteration count SHOULD be as large as the verification server performance will allow, typically at least 10,000 iterations
  - A verifier SHOULD perform an additional iteration of a key derivation function using a salt value that is secret and known only to the verifier

Status will implement all of the following above guidelines from NIST, as well as the additional following:

### Password Strength Indicator
- It is feasible to use [what BitWarden uses](https://github.com/bitwarden/jslib/blob/c7ac645eb7b0cfa9c972dd382d63fab5893e1f82/src/services/passwordGeneration.service.ts#L383) for a password strength indicator
- https://github.com/dropbox/zxcvbn

### Checking Against Known Password Lists
Available lists: 
- [Have I Been Pwned Password List](https://haveibeenpwned.com/Passwords)
  - At least 8.5 GB and up to 12.5 GB, we would have to run a service or use their API
  - $3.5 USD / month for API Key. Is subject to same API issues we currently face with services
- The above password strength indicator takes into account 30k weak passwords already. 
- [SecLists Password Repo](https://github.com/danielmiessler/SecLists/tree/master/Passwords)
  - If API unavailable for some reason (offline), we can use some of these to check locally to provide a backup option. 

## Biometric 

## Transaction