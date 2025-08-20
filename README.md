# Shell Code

WITH THE USE OF THE WINDOWS API AND METASPLOIT, I HAVE LEARNT HOW TO EXECUTE MACHINE INSTRUCTION VIA AN EXECUTABLE TO GAIN ARBITRARY READ AND WRITE PRIVELAGES

**Shellcode** is a sequence of machine-level instructions that **perform specific actions** (e.g., launching a reverse shell, displaying a message, or spawning a process).

This shellcode runner:

1. **Allocates memory** in the current process with `EXECUTE` permissions.
2. **Copies the shellcode** into the allocated memory.
3. **Casts the memory** as a function pointer.
4. **Invokes the shellcode**, causing it to execute.

---------------------------------------------------------------------------------
# TOOLS USED:
METASPLOIT, 
C++, 
THE WINDOWS API

---------------------------------------------------------------------------------
 # CHALLENGES FACED:

Because this behavior (allocating memory with `PAGE_EXECUTE_READWRITE`, writing shellcode, and calling it) **mimics malware**, it's closely monitored and often flagged by EDRs as malicious behavior. Bypassing these detections is an essential part of advanced Red Teaming and threat emulation.

Currently learning how to use XOR to encrypt the shellcode payload so bypass detection.

---------------------------------------------------------------------------------------------------
ADDITIONALLY:

I HAVE LEARNT HOW TO WRITE A DROPPER WITH POERSHELL SCRIPTS:

A **fileless PowerShell dropper** does not write any payload to disk. Instead, it loads and executes code directly in memory using PowerShell. This technique is often used to **evade antivirus and EDR solutions**, which typically monitor disk writes and executable launches.

Host `shell.ps1` in a secure HTTP/S location.
- Rotate payloads dynamically with a C2.
- Integrate with **Empire**, **Covenant**, **Mythic**, or **custom C2** for remote control.
1. **`Invoke-WebRequest`**: Fetches the remote script (`shell.ps1`) from your HTTP server.
2. **`IEX` (Invoke-Expression)**: Executes the script content _in memory_, without saving it to disk.

You can host the payload using a Python web server



