# Shellcode Lab – Educational Exercise with Metasploit, C++, and PowerShell

## Overview
This project is a **controlled virtual lab environment** where I experimented with:
 Generating and executing basic shellcode in C++.
 Understanding how PowerShell can be used to run payloads in a **fileless** manner.
 Strengthening my knowledge of exploit development, code injection, and defense techniques.

 **Disclaimer**:  
All experiments were performed **strictly for educational purposes** in an isolated virtual machine.  
The shellcode and droppers used in this lab were **non-malicious**, with the main payload simply showing a Windows MessageBox.  
This project is part of my journey to **understand how attackers operate** so I can better defend against them.


---

## What I Did
1. **Set up a virtual lab**  
    Isolated Windows VM environment.  
    Installed Metasploit and Visual Studio for C++ testing.  
    Used PowerShell as part of the dropper exercise.  

2. **Generated a simple shellcode with Metasploit**  
    Created a harmless MessageBox payload using `msfvenom`.  
    Exported the payload as raw shellcode for testing.

3. **Integrated shellcode into a C++ program**  
    Wrote a C++ program that allocated memory, copied the shellcode, and executed it.  
    Observed safe execution (Windows MessageBox).  

4. **Studied Fileless PowerShell Droppers**  
    Learned how a **fileless dropper** works: instead of writing to disk, it loads and executes code directly in memory.  
    Key points learned:
      `Invoke-WebRequest` can fetch a remote script (e.g., `shell.ps1`) from an HTTP/S server.  
      `IEX (Invoke-Expression)` runs the script immediately in memory, leaving fewer traces on disk.  
      Payloads can be hosted with a simple Python HTTP server.  
    Understood how attackers use this technique to **evade antivirus and EDR solutions**, which focus on monitoring files written to disk.  
    Learned that droppers can be tied into **C2 frameworks** (like Empire, Covenant, Mythic, or custom servers) to rotate payloads dynamically — although I only studied the mechanics conceptually.  

---

## What I Learned
- **Shellcode Basics**  
   How machine code payloads work.  
   Safe generation of payloads using Metasploit.  

- **C++ Memory Execution**  
   Allocating executable memory (`VirtualAlloc`).  
   Copying shellcode into memory.  
   Executing it safely.  

- **Fileless Execution with PowerShell**  
   How PowerShell can be leveraged to load payloads directly into memory.  
   Why fileless malware is harder to detect.  
   How defenders can spot suspicious PowerShell activity (e.g., heavy use of `Invoke-Expression`).  

- **Safe Research Practices**  
   Always isolate testing environments.  
   Use harmless payloads when practicing.  
   Focus on learning techniques from a **defensive perspective**.  

---

## Outcome
By completing this lab I gained:
 Practical experience in running shellcode through C++.  
 A foundational understanding of fileless PowerShell droppers.  
 Awareness of **how attackers abuse these techniques** and, more importantly, **how defenders can monitor and counter them**.  

---
