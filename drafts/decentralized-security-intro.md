# What is Security for Decentralized Projects?

## Intro
I would argue that the term "security" has risen in the ranks of importance over the past few years in lieu of highly publicized breaches, hacks, and privacy exploitations.  Unfortunately, although everyone thinks it's important, many have a hard time implementing it in everyday practices, what I call being a good citizen of the internet.  This is exacerbated in the decentralization technology community, where the attack surface is drastically altered and the focus of maliscious behavior is shifted from the underlying data-store to the links that bind the data to the end-user.  

This post is an attempt to outline what the primitives of security are, and how to rationalize implementing it into your everyday life.  I'll start from the philosophical, and move towards the practical.

## Be Knowledgable and Empathetic 
I do not mean in order to understand security, you have to know everything and care about the would-be attacker's feelings.  I mean you have to be able to think like one, and place yourself in their shoes in order to deny them.  The ability to deny them is then strengthened by a firm understanding in the domain being defended.  

1. Always strive to be better at what you do, particularly in how and why the thing you do works and how value is attached to it.
2. Always think about how you can break what you are doing.  What are the weaknesses and potential exploitations?

## Follow the Money
It is often said that data is the new oil, or in other words, highly sought after and valuable.  In the blockchain space, this concept is exacerbated as it enables true digital scarcity and its ownership.  

The idea is simple; **Attacks are motivated by value and metered by effort.**  The amount of attention you pay to security should be proportional to the value being secured.  Security is making sure said value is stored and moved safely, thus making it more difficult for someone who shouldn't have access to it to get to it.  For digital security, cryptography tends to be the greatest tool for this. 

### How Much Secure is It?
We naturally have different mentalities of storing personal wealth traditionally.  We don't walk around with a significant portion of our total wealth on our person, and we tend to sometimes make some money hard to access so we can save it for a rainy day.  Security is the same way.

#### Different Security for Different Amounts

#### Value as a Metric for Security
When an attacker finds a vulnerability or exploit, they immediately gauge the current value of using it vs. the potential value of using it.  That is, is it currently worth it for others to know this exists?

Let's take the example of a standard smart contract on Ethereum that gives multisignature wallet functionality.

Since blockchains are public and have value associated with them, we have direct metrics of how secure the pratices are based in how much money they hold.  

## People are Lazy
A core concept in the security community is the "Pyramid of Pain", which was first introduced in this [blog](http://detect-respond.blogspot.com/2013/03/the-pyramid-of-pain.html) in 2013, and can be summed up in the following figure: 

![Pyramid of Pain](http://2.bp.blogspot.com/-EDLbyYipz_E/UtnWN7fdGcI/AAAAAAAANns/4rBXaHarJ6o/s1600/Pyramid+of+Pain+v2.png "title")

The pyramid illucidates the indicators available for defenders to identify they're being attacked, while also showing how painful changing/removing that indicator is for the attacker.  

At the bottom we find hash values, which refers to a fingerprint of a given suspiscious or maliscious file.  While it is easy to identify this and share information about it, removing it from our systems, it is also trivially easy for the attacker to alter the file and its respective fingerprint.  You are not causing him much pain by denying this specific thing.  As you move up the pyramid, the difficulty in identifying and denying indicators increases, but the amount of work the attacker has to change his routine is also increased.  At the apex of the pyramid, you are able to identify and deny _behaviors_ instead of the tooling that is used to accomplish those behaviors.  By denying them, you are forcing the attack to change their methodology, which is a very difficult thing to do. 

Attackers are like everyone else (excluding ethics), and thus optimize for minimal effort and maximum reward.  The key take away from this is the last quote fo the original blog post

> the amount of pain you cause an adversary depends on the types of indicators you are able to make use of

This makes sense, but the pyramid was designed specifically for defense of a centralized service, which has a lot of overlap with the decentralized world, but there are differences.  Let's talk about them.

### Centralized vs. Decentralized Value
If data is what we consider valuable, then we have to care about it in two different ways: when it's not moving, and when it is.  That is, we need to secure it when we store it somewhere, and also when it's in route to be stored or accessed somewhere else.  In order to properly do this, we must first ask a few questions about its existence:

1. Who controls the data?
2. Where is it stored?
3. Who profits from it?

If data is the goal, then by asking the above questions we can see who and where to go after if we want to optimize our efforts for maximum value return.

#### Centralized Data
Most everything we grew up using on the internet was built using a centralized model of data (value) storage.  That is, databases that hold all of the significant information about a service and its userbase.  So when we ask the above questions we see that it is in the attackers best interest to focus on the data at rest.  

**DISCUSS HOW OUR SECURITY MODEL IS DERIVED FROM THIS**

#### Decentralized Data
Blockchains made a huge push towards decentralized architecture.  A major change in the data model is that the individual users hold and control the data that represents them, not the service. The service then acts as more of a transitional entity.  If we ask the same questions as above, we see that we'll come up with very different answers from an attacker's perspective.  **The data source is no longer the most bang for the buck.**  Because the value is now vastly more distributed, value capture methodology is shifted towards the vulnerabilities associated with data in motion as opposed to data at rest.  

## Thoughts Notes
- Blockchain differences
    - no honey-pots
        - changes the mark
        - attack the layers above the data store
- TPPs and Pyramid of Pain
    - Security is making things difficult
    - http://detect-respond.blogspot.com/2014/03/use-of-term-intelligence-at-rsa.html
- Mentality and Culture
    - Understanding and Empathy
        - Attackers mindset
    - angel and demon on your shoulder weighing in
- No guarantees, nothing is completely safe
    - metrics are value-based
        - smart contracts example (how much money is in there as standard of security)
    - tests
        - lower vs upper bounds
        - modularity for feasible scope of tests and functionality
    - personal security
        - questions one should ask oneself
- Being practical
    - Great security practices that aren't followed are worthless.
- Data at rest, Data in transit
- 