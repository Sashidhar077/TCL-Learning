# Module 21 — Tcl + Linux Automation

## 📌 Overview

This module connects **Tcl programming with Linux**, which is an important step toward practical automation and EDA scripting.

The module focuses on executing Linux commands from Tcl, capturing command output, working with directories, handling command errors, and combining these concepts to build a simple Linux automation utility.

---



## 📚 Module Contents

### Exercise 1 — Execute Linux Commands

**File:** `exercise01_linux_command.tcl`

Learn how to execute a Linux command from Tcl using `exec`.

Linux command used:

```text
whoami
```

**Main concept:**

```tcl
exec
```

The exercise captures the current Linux username and displays it.

---

### Exercise 2 — Capture and Process Command Output

**File:** `exercise02_command_output.tcl`

Learn how to capture the output of a Linux command and store it in a Tcl variable.

Linux command used:

```text
uname -s
```

**Main concepts:**

* `exec`
* `set`
* Command output
* Tcl variables

The captured output is then processed and displayed using Tcl.

---

### Exercise 3 — Directory Automation

**File:** `exercise03_directory_automation.tcl`

Learn how Tcl can inspect and create directories.

The exercise checks whether a directory called `reports` exists.

If it doesn't exist, Tcl creates it.

**Main commands:**

```tcl
file isdirectory
file mkdir
```

**Concepts:**

* Directory checking
* Directory creation
* Conditional logic
* Filesystem automation

---

### Exercise 4 — Linux Command Error Handling

**File:** `exercise04_linux_error_handling.tcl`

Learn how to safely handle failures from Linux commands.

The exercise intentionally executes a command using a non-existent directory and uses `catch` to handle the error.

**Main concept:**

```tcl
catch
```

This prevents an external command failure from terminating the Tcl script unexpectedly.

---

# 🚀 Mini Project — Linux System Information Utility

**File:** `mini_project_system_info.tcl`

The mini project combines the concepts learned throughout Module 21 to create a simple Linux system information utility.

The program collects:

* Current user
* Operating system
* Current directory
* Hostname

The information is obtained by executing Linux commands from Tcl.

---

## 🛠️ Linux Commands Used

```text
whoami
uname -s
pwd
hostname
```

The Tcl script captures the output of these commands and displays it as a formatted system information report.

The project also uses `catch` so that command failures can be handled safely.

---


---

## 🐧 Linux Commands Practiced

```text
whoami
uname -s
pwd
hostname
ls
```

---

## 🔬 EDA / VLSI Connection

Tcl is widely useful for automation because it can interact with the Linux environment and execute external commands.

A future EDA automation flow can follow a similar structure:

```text
Check Environment
       ↓
Create Work Directory
       ↓
Run EDA Tool
       ↓
Capture Output
       ↓
Check Errors
       ↓
Process Results
       ↓
Generate Reports
```

For example, an automation script may eventually need to:

* Set up a working environment
* Create required directories
* Execute an EDA tool
* Capture tool output
* Detect failures
* Collect reports
* Generate a summary

Module 21 provides the foundation for connecting **Tcl + Linux + EDA automation**.

---

## 📂 Directory Structure

```text
21-Tcl-Linux-Automation/
│
├── README.md
│
├── exercise01_linux_command.tcl
├── exercise02_command_output.tcl
├── exercise03_directory_automation.tcl
├── exercise04_linux_error_handling.tcl
│
└── mini_project_system_info.tcl
```

---

## 📊 Module Progress

| Component    | Topic                            | Status |
| ------------ | -------------------------------- | ------ |
| Exercise 1   | Execute Linux Commands           | ✅      |
| Exercise 2   | Capture Command Output           | ✅      |
| Exercise 3   | Directory Automation             | ✅      |
| Exercise 4   | Linux Command Error Handling     | ✅      |
| Mini Project | Linux System Information Utility | ✅      |



---
