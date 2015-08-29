win_autossh_svc
--------------------

This will install a Windows service that utilize's Cygwin's autossh to maintain a reverse tunnel to a port on a "remote" computer.

The current config points the tunnel to 3389 on the destination machine and makes it available at 33890 on your local machine.

Some terms:

* LOCALMACHINE: the machine you're connecting from
* REMOTEMACHINE: the machine you're connecting to
* REMOTESERVER: the third, world accessible machine to establish the ssh tunnel through

Create a reverse tunnel into the REMOTEMACHINE via REMOTESERVER:

1. Install cygwin. Ensure you've included openssh, autossh. (I like to also include `mosh` for accessing some of my other servers.)

2. Edit `proxy.bat` to match the settings for REMOTEMACHINE. (correct local username, correct address/port for REMOTESERVER)

3. Edit `install-step2.bat` to include the username and password of the owner of the private key specified.

4. Execute `install.bat`.

Create a tunnel from LOCALMACHINE to REMOTEMACHINE via REMOTESERVER:

1. Use `client.bat` to create another tunnel to the REMOTESERVER

2. Your local port 33890 is now connected to 3389 on the remote machine

Note: You will have to update the password associated with the service whenever your user password changes

Configure the service Start Type to be "Automatic (Delayed Start)". The `install.bat` script does not do this for you. The "Automatic" type will not work, for reasons that are unknown to me. "Automatic (Delayed Start)" services are started 2 minutes after the last "Automatic" service is started; this will ensure that the proxy comes up on machine boot without user intervention.

**NOTE**: While I would take fixes and would like to keep this working, I don't actively use it. I now have a Linux machine on the same network as my Windows machine and I can freely access it and tunnel to the Windows RDP port from there. Let me know if it's broken and I will take a look.
