reverse_winrdp_proxy
--------------------

This will install a Windows service that utilize's Cygwin's autossh to maintain a reverse proxy connection to your local RDP.

You'll need to modify these files, as they're hardcoded for:
 1. The port I wanted to use on the central server
 2. The hostname of the central server
 3. The location of the autossh.exe (could be in cygwin or cygwin64)
 4. The location of the private key used to auth to central server

Cheers, good luck. Don't use it if it's against your policies, etc.
