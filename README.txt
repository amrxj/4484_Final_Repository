----------------------------------------
EECS 4484 Malware Final Project
----------------------------------------

Author: Amraj Randhawa
Student #: 219554963
Student E-Mail: randha13@my.yorku.ca

WARNING:
This program is for educational/course purposes only.
PLEASE RUN THIS IN A VM ONLY! 

HOW TO COMPILE:
g++ Amraj_malware.cpp -o Amraj_malware.exe -lwininet
OR 
(how I ensured it ran): run X64 Native Tools CMD Prompt in FLAREVM, then run:
cl Amraj_malware.cpp wininet.lib advapi32.lib user32.lib

HOW TO RUN:
1. Start FakeNet (for network demo)
2. Run the executable (NOTE IT IS PACKED)
    Amraj_malware.exe

WHAT DOES THE PROGRAM DO? 
- Displays warning message
- Creates persistence via registry keys
- Prevents multiple instances using mutex
- Drops encoded file in directory where it is run: artifact.txt will be dropped.
- Sends network request for C2 simulation
- Launches notepad.exe and writes into its memory
- Implements runtime-only flag
- Uses obfuscation techniques
- bonus flag present


BYPRODUCTS OF RUNNING THE MALWARE:

REGISTRY KEY:
HKCU\Software\Microsoft\Windows\CurrentVersion\Run (similar to labs)

FILE DROP: 
C:\(wherever you installed the zip and extracted it)\4484_Final_Repository\artifact.txt (similar to lab dropping files.)

PROCESSES INVOLVED:
notepad.exe (injection simulation, similar to the demo/labs)

CLEANING UP:
Run:
cleanup.bat

This will:
- Remove registry entries
- Delete dropped files from malware 
- kill all processes

NOTE:
- Some flags are encoded and not visible via strings.exe to ensure completeless of project
- One flag exists only in runtime memory
- Network traffic can be seen using FakeNet (it's simulated)
