reverse_winrdp_proxy
--------------------

This will install a Windows service that utilize's Cygwin's autossh to maintain a reverse proxy connection to your local RDP.

1. Install cygwin. Ensure you've included openssh, autossh.

2. Edit proxy.bat for your remote machine, remote user, ports, and private key.

3. Edit install-step2.bat to include the username and password of however owns the private key specified.
