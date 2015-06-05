reverse_winrdp_proxy
--------------------

This will install a Windows service that utilize's Cygwin's autossh to maintain a reverse proxy connection to your local RDP.

1. Install cygwin. Ensure you've included openssh, autossh.

2. Edit cygrunsrv-install.sh so that it uses your username, your server and your private key path

Notes:

Please make sure that the same account which is running autossh.exe is the owner of the ssh private key.
Also ensure that the owner of the private key is that same user.

This kind of sucks, for a number of reasons:

1. This has to be reinstalled every time your user's password changes. Otherwise, the service will fail to start with bad auth.
2. Mitigating #1 would be possible if you could give ownership of the SSH key to the Local System account, but that's intentionally forbidden.
3. Mitigating #1 would also be possible if you could make ssh ignore key permission errors, but that seems pretty reasonable.
2. `autossh.exe` keeps running in the background, but Windows thinks it exitted. Thus, if `autossh.exe` were to ever crash, you're hosed until you restart the service manually. 

Just another reminder of why I hate Windows.