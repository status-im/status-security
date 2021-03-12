# Threat Modeling Process
## Overview
Each project within Status should go through a threat modeling process.  This activity serves a myriad of purposes, namely:
- Coordination of project associates on a singly unified understanding of architecture
- Documentation to refer to for discussions/upgradability/education
- Reference material for external security reviews to expedite the on-boarding process

While this idea is great and its use is typically agreed upon, the main barriers of entry is two-fold: People don't know how, and people don't like doing documentation. 

Therefore, this document is meant to help rememdy this by providing an _simple_ process that can be expanded upon.  It's as simple as this: Draw a diagram, and then talk about it with those involved.  The rest of this document will describe _how_ you do that and give examples where relevant. 

It should be noted that this process is slightly different dependent upon the nature of the work being done. How you make diagrams and then discuss them slightly changes whether you are describing a **product** or a **protocol**.  We will describe both.

## What
First, what is "Threat Modeling"? A [Security Intelligence Blog](https://securityintelligence.com/posts/what-is-threat-modeling-and-how-does-it-impact-application-security/) puts it pretty succinctly:

> Threat modeling is the practice of identifying and prioritizing potential threats and security mitigations to protect something of value, such as confidential data or intellectual property.

It is an inherently collaborative process between all relevant domain experts of a given project.  It is an attempt to understand fully the valuable items associated with a project, the security measures that protect them, and the range of potential malicous actors that will attempt to get them. 

## Why
There are many blogs and other resources (see [Resources](##Resources) for some of them) that can describe why any company or team should actively threat model, but I will try and focus a bit more on why Status should, which will overlap heavily with those blogs. 

A successful threat modeling will yield answers to (at least) the following questions:
- Where is value stored in this system (assets)?
- How is value secured within the system (security controls)?
- Who are all of the potential actors in the system, both malicious and non-malicious (actors)?


## How
### A Product
#### The Diagram
You want to draw a diagram that gives an architectual overview of the product
#### The Description

### A Protocol
#### The Diagram
#### The Description

## Resources
### Diagram Tools
- [Miro](https://miro.com) - paid, collaborative, excellent integration support
- [Diagrams.net (draw.io)](https://app.diagrams.net) - free, open-source, good options and integrations, kinda-collaborative, web or desktop application
- [Draw.io Threat Modeling Examples](https://github.com/michenriksen/drawio-threatmodeling)
- [Threat Modeling LinkTree](https://linktr.ee/threatmodel)