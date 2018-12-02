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

3. Remote threat: A threat from outside the organization/network.

Because we have limited time and resource, although we would ideally
want to shore up every possible vector, we'll list those most likely to
least likely.

1. Software intentionally but not maliciously installed by a user on the
   network. This is one of the most common threats, is an internal
threat caused by installing software not known to be malicious.
 1. Possibly a trojan of some kind, or otherwise malicious software
    smuggled in on the back of useful software.
	- Not totally unlikely that a trojan may have been crafted
	  specifically for us by a competing organization. 
	- Not to overstate the likelyhood of this, merely to clarify:
	  Some anti-malware organizations refer to carriers of this as
PUP: Potentially Unwanted Programs. They often take the form of free
programs whose authors want to still make some amount of money, so they
include ads for other, paid programs which may or may not be any good.
They may serve an actual use: some disk defragmenting programs get
labeled as this because of the ads.

	  The worst of them are in many ways indistinguishable from true
malware in that they walk like malware and quack like malware.  They
typically instill a sense of urgency ("Threats detected on your
computer!"), and conveniently offer an immediate solution ("Call our
support team at this number. Install now to fix!"). MacKeeper is an
example of PUP which is particularly pernicious. On its own it doesn't
do much that is actually harmful, unless you consider getting rid of
foreign language files harmful, but it will continually pester the user
to buy a license to "protect their machine", while in effect it doesn't
do any good either.

Similar Incidents
=================

Potential Impact
================

Countermeasures
===============
