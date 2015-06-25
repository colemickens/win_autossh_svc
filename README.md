reverse_winrdp_proxy
--------------------

This will install a Windows service that utilize's Cygwin's autossh to maintain a reverse proxy connection to your local RDP.

1. Install cygwin. Ensure you've included openssh, autossh.

2. Edit proxy.bat for your remote machine, remote user, ports, and private key.

3. Edit install-step2.bat to include the username and password of however owns the private key specified.

Note: You will have to update the password associated with the service whenever your user password changes

Ensure that the service is set to Start Type: "Automatic (Delayed Start)". The "Automatic" type will not work, for reasons that are unknown to me. "Automatic (Delayed Start)" services are started 2 minutes after the last "Automatic" service is started; this will ensure that the proxy comes up on machine boot without user intervention.
