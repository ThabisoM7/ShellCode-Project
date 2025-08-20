# ShellCode-Project

WITH THE USE OF THE WINDOWS API, I HAVE LEARNT HOW TO EXECUTE MACHINE INSTRUCTION VIA THE EXECUTABLE FILE TO GAIN ARBITRARY READ AND WRITE PRIVELAGES

**Shellcode** is a sequence of machine-level instructions that **perform specific actions** (e.g., launching a reverse shell, displaying a message, or spawning a process).

This shellcode runner:

1. **Allocates memory** in the current process with `EXECUTE` permissions.
2. **Copies the shellcode** into the allocated memory.
3. **Casts the memory** as a function pointer.
4. **Invokes the shellcode**, causing it to execute.

---------------------------------------------------------------------------------
# TOOLS USED:
METASPLOIT
C++
WINDOWS API

---------------------------------------------------------------------------------
 # CHALLENGES FACED:

Because this behavior (allocating memory with `PAGE_EXECUTE_READWRITE`, writing shellcode, and calling it) **mimics malware**, it's closely monitored and often flagged by EDRs as malicious behavior. Bypassing these detections is an essential part of advanced Red Teaming and threat emulation.

Currently learning how to use XOR to encrypt the shellcode payload so bypass detection.

