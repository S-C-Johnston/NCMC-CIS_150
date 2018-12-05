1. Install only the required SQL server components

	1. The effect of only installing required components is in part
	   to reduce the possible attack surface of the Server. Adding
other components later is in effect trivial, and offers no real benefit
if installed early. Although the Server may not load those components
until they are needed, I can't say this for certain. By waiting to
install additional modules until they're needed, the runtime hardware
demands are kept as light as possible.

	2. I think this is best practice with any technology, from SQL
	   to Operating System. Stripping out unnecessary modules from
the Linux kernel and compiling it customized for the target hardware is
not uncommon.

2. Don't install SQL Server Reporting Services (SSRS) on the same server
   as the database engine

	1. Server Reporting Services run with internet facing pieces on
	   top of Microsoft IIS, which has historically not been a
bulwark of security. Running it on the same server as the DBMS adds
enormous surface area potentially vulnerable.

	2. For the same reasons as the first section, this seems to be a
	   best practice which would be wise to apply in all
circumstances. Even if the server it runs on is not on different
hardware, merely a different virtual machine, that insulation of
internetworked components is wise.

3. Disable services not expecting immediate use

	1. This may come with some management overhead, but it is
	   probable that much of it could be scripted away. This is
another property which falls out of the first. Keeping both runtime
hardware requirements and attack surface slim is not bad as long as it
doesn't interfere with performance.

	2. Again, this seems to me like a best practice with few
	   exceptions.

4. Change the default TCP/IP ports

	1. This may be helpful insofar as preventing vulnerability to
	   malware which is not particularly smart, likewise malicious
people who are not particularly smart. That may well be enough to keep
threats from organization machines from being effective.

	2. Of the software means to protect a SQL server, this is likely
	   one of the weakest. It isn't necessarily a bad thing to do,
but it remains effective only if the server isn't vulnerable to port
sniffing. For a low-risk server, changing the defaults may not be worth the
hassle. The fewer users there are on a network accessing a server from
organization machines, the less risk there is of malware threatening the
server.

5. Disable the network protocols not required for operation

	1. Another means of keeping the surface area slim, insulating
	   the SQL server by running it without any other networking
stack on the same host is wise.

	2. This depends on the availability and difficulty in achieving
	   this. If favoring named pipes over TCP/IP means changing
significant chunks of application logic to connect properly, then it's certainly
not worth the effort for such databases as we've been running. 

6. Question

	1. Helpful?

	2. Should it be used?

7. Question

	1. Helpful?

	2. Should it be used?

8. Question

	1. Helpful?

	2. Should it be used?

9. Question

	1. Helpful?

	2. Should it be used?

10. Question

	1. Helpful?

	2. Should it be used?

11. Question

	1. Helpful?

	2. Should it be used?

12. Question

	1. Helpful?

	2. Should it be used?

