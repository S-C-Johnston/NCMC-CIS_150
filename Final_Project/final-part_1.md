Fullsoft Incorporated recently suffered breach of data confidentiality,
damaging its competitive advantage. Proprietary information was
exfiltrated as a result of malware attack.

This document is an informal collection of thoughts to aid discussion in
an organization meeting, to help make accessible to potential laymen the
security team's expertise. Specifically, the incident itself is to be
analyzed, as well as the impact it may carry.

Circumstances
=============
Malware can spread through an number of vectors. Malware which is
capable of actually executing and exfiltrating data is likely to take
only a handful of forms.

To lay some groundwork terms:
1. Threat: Any action which can potentially harm the availability,
   integrity, or confidentiality of information. Need not be malicious,
merely harmful.

2. Internal threat: A threat from inside the organization. This can be
   as simple as a well-meaning user doing something foolish, or as
complex as a disgruntled employee acting maliciously.

   It is important that we educate users of their responsibility in
avoiding this, but for morale it is likely best we avoid admonishing
them to harshly or making them feel stupid. Users are easily made to
feel stupid just by asking for help from IT or seeing how quickly
computer professionals solve an issue they were struggling with for
potentially hours. My experience is that it is best to encourage them
and provide ample opportunity to overcome that feeling. Users who feel
inconvenienced or patronized are likely to attempt to circumvent
security measures, so a balance must be found.

3. Remote threat: A threat from outside the organization/network. Remote
   threats are likely to leverage whatever vulnerabilities they find,
including the goodwill and cooperativeness of individuals in the
organization.

Because we have limited time and resource, although we would ideally
want to shore up every possible vector, we'll list those most likely to
least likely.

1. Software intentionally but not maliciously installed by a user on the
   network. This is one of the most common threats, is an internal
threat caused by well-meaning but ignorant users.

 1. Far and away the most likely breed of malware is a trojan of some
    kind, or otherwise malicious software smuggled in on the back of
useful software. They initiate on a network primarily through social
engineering attacks, such as email-attachments. Trojans are often
deployed with the intention of using them as a backdoor which tries to
phone home to the attacker or which the attacker can use to log in to
the machine remotely.  

	- Not totally unlikely that a trojan may have been crafted
	  specifically for us by a competing organization or criminal.
Attacking by leaving infected Flash-Drives in a parking lot for the
curious employee to pick up and plug in is not unheard of.

 2. By distinction, a virus is usually less stealthy and usually more destructive in behavior, and it typically aims either to disrupt
operations or make itself known. A virus will usually spread through
infected files or programs, being attached to some host file, and upon
running will attempt to infect other host files. Although the need to
ride on the back of something innocent-looking may seem like trojan
behavior, the viral, self-replicating nature is what makes it a
virus, while trojans typically don't attempt this self-replicating
behavior.

2. A remote attacker may have found a vulnerable internet-facing server
   and through it, pivoted elsewhere. They could leave a rootkit behind,
allowing them return access. Without interacting with any member of
staff, they may have been performing reconnaissance for some time. If
our organization was the subject of corporate espionage, this is not an
unlikely move.

Similar Incidents
=================
Two similar occasions are available to dissect.

##Panic 

The software company [Panic](https://panic.com) suffered theft of their
source code.  According to their
[blog](https://panic.com/blog/stolen-source-code/) from one of the
developers, the thieves delivered their attack by disguising their
software as a video-codec processing program called Handbrake.

1. Handbrake is legitimate software, but for a period of three days it
   was vulnerable, and during that time the software was "nagging them
for some time to install an update".

2. When the program reported that an incremental update was not
   available, it prompted for a full download of the next version. The
developer, just wanting to get on with it, didn't stop to think about
why Handbrake needed elevated privileges to run, or about how sketchy
the authentication dialogue seemed at the time.

3. Git credentials were stolen and used to clone several repositories of
   their source code. Panic was lucky in that the attacker did not get
clones of every repository, largely because the attacker was guessing at
their repository names.

 - _There is no reason to believe that we are this lucky_.

4. They were contacted by the thief to the effect of a ransom. "Pay us
   or we'll release it into the wild" is an effective summary. There is
no reason to believe that once paid the thief will keep their promise.

 - These are digital assets which can be copied and redistributed
   easily, not a person or physical goods which must be returned.

They came to three conclusions about the likely impact, which will be
discussed later.

Potential Impact
================

Countermeasures
===============
