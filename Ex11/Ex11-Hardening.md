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
