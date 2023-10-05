# priv-hunter
Simple but highly effective pivoting tool for lateral privilege escalation

Priv-hunter is a loud but simple batch file for pentesters that helps expand influence on an internal network by searching for computers that a compromised account might have admin rights on. There are many tools for this on Linux, but in cases where the pentester has compromised a Windows desktop through Citrix, VMware Horizon, etc., priv-hunter comes in handy because it's just an old school batch file. It's especially useful when up against EDR, lack of local admin rights, or lack of PowerShell. Once you give priv-hunter a list of IP addresses or computer names and a set of credentials, it tries the C$ admin share on each one. In the command prompt window, vulnerable computers showing a C$ in the path are updated in real time. This tool is great for discovering the needle in a haystack of that one computer that has the Domain Users group configured as a local admin.

Usage:

priv-hunter.bat \<input-file> \<domain> \<username> \<password>

The \<input-file> should be a text file with hostnames or IP addresses, each on a separate line.
