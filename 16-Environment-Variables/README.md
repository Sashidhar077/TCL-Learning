# Module 16 – Environment Variables in Tcl

## 📖 Overview

Environment variables are values provided by the OS or shell that a program can read at runtime. In Tcl, they're accessed through the special `env` array:

```tcl
$env(VARIABLE_NAME)
```

They're useful for keeping configuration *outside* the source code — things like:

- Project / design name
- Report directory
- Tool installation path
- Library path
- General configuration settings

This is especially valuable in **Linux-based EDA/VLSI automation**, where the same Tcl script often needs to run against different designs, directories, or tool environments without being edited each time.

Full working code for each topic lives in its own `.tcl` file — this README explains the *what/why* and shows the key line(s). Run the files to see the complete implementation.

---

## 🎯 Learning Objectives

By the end of this module you will be able to:

- Read environment variables from Tcl
- Check whether an environment variable exists before using it
- Set environment variables inside a Tcl process
- Use environment variables as external configuration
- Provide default values when a variable is missing
- Understand the difference between Tcl variables and environment variables
- Use environment variables in automation scripts
- Build a simple environment configuration utility

---

## 📚 Topics Covered

| Topic                     | Tcl Concept                      |
|----------------------------|-----------------------------------|
| Read environment variable  | `$env(NAME)`                     |
| Check existence            | `info exists env(NAME)`          |
| Set environment variable   | `set env(NAME) value`            |
| Configuration               | Environment-based settings       |
| Default values             | `if` + `info exists`             |
| Linux integration          | `export VARIABLE=value`          |
| EDA usage                  | Design/tool/report configuration |

---

## 📂 Folder Structure

```text
16-Environment-Variables/
│
├── README.md
│
├── exercise01_read_env.tcl
├── exercise02_check_env.tcl
├── exercise03_set_env.tcl
├── exercise04_env_configuration.tcl
│
└── mini_project_env_config.tcl
```

---

## Core Concepts

### 1. Reading an environment variable

```tcl
puts $env(HOME)
```

Common Linux environment variables include `HOME`, `PATH`, `USER`, `SHELL`, `PWD` — exact availability depends on the OS.

### 2. Checking whether it exists first

Accessing an undefined `env(...)` key throws an error, so check before reading:

```tcl
if {[info exists env(HOME)]} {
    puts "HOME: $env(HOME)"
} else {
    puts "HOME does not exist"
}
```

### 3. Setting an environment variable

```tcl
set env(PROJECT_NAME) "TCL_LEARNING"
```

> ⚠️ This only changes the environment of the **current Tcl process** — it does not persist back into your Bash shell after the script exits. To set it from Bash instead:
> ```bash
> export PROJECT_NAME=TCL_LEARNING
> ```

### 4. Using it as configuration

Instead of hard-coding a value in the script:

```tcl
set project_name "CPU_TOP"   ;# hard-coded — not reusable
```

let the shell supply it:

```bash
export PROJECT_NAME=CPU_TOP
```
```tcl
set project_name $env(PROJECT_NAME)   ;# reusable across projects
```

### 5. Providing a default when missing

```tcl
if {[info exists env(PROJECT_NAME)]} {
    set project_name $env(PROJECT_NAME)
} else {
    set project_name "DEFAULT_PROJECT"
}
```

This "use it if present, else fall back" pattern is the backbone of most configuration-driven automation scripts.

---

## 🧪 Exercises

| # | File | Task | Key Concept |
|---|------|------|--------------|
| 1 | `exercise01_read_env.tcl` | Read and display the `HOME` environment variable | `$env(HOME)` |
| 2 | `exercise02_check_env.tcl` | Check whether `HOME` exists; display it or a fallback message | `info exists env(HOME)` |
| 3 | `exercise03_set_env.tcl` | Create `PROJECT_NAME`, set it, and display it | `set env(PROJECT_NAME) "TCL_LEARNING"` |
| 4 | `exercise04_env_configuration.tcl` | Use `PROJECT_NAME` if set, otherwise fall back to a default | `info exists` + `$env(...)` + `if/else` |

---

## 🚀 Mini Project – Environment Configuration Utility
📄 `mini_project_env_config.tcl`

### Objective

Read three environment variables and fall back to sensible defaults for any that are missing.

| Variable       | Purpose            | Default            |
|----------------|---------------------|----------------------|
| `PROJECT_NAME` | Project name        | `TCL_PROJECT`       |
| `DESIGN_NAME`  | Design name         | `DEFAULT_DESIGN`    |
| `REPORT_DIR`   | Report directory    | `./reports`         |

### Example run

```bash
export PROJECT_NAME=TCL_LEARNING
export DESIGN_NAME=CPU_TOP
export REPORT_DIR=/home/user/reports

tclsh mini_project_env_config.tcl
```

**Output (variables set):**

```text
=================================
     PROJECT CONFIGURATION
=================================
Project Name : TCL_LEARNING
Design Name  : CPU_TOP
Report Dir   : /home/user/reports
=================================
```

**Output (variables not set — defaults used):**

```text
=================================
     PROJECT CONFIGURATION
=================================
Project Name : TCL_PROJECT
Design Name  : DEFAULT_DESIGN
Report Dir   : ./reports
=================================
```

### Project Flow

```text
Linux Shell
   │ export
   ↓
Environment Variables (PROJECT_NAME, DESIGN_NAME, REPORT_DIR)
   ↓
Tcl Script checks each with info exists
   ↓
   ┌───────────────┬───────────────┐
   ↓               ↓
Available       Missing
   ↓               ↓
Use env value   Use default
   └──────┬────────┘
          ↓
  Project Configuration Report
```

---

## 🎯 Why This Matters in EDA

A Tcl automation script often needs design-specific information: design name, project directory, report directory, tool installation path, library location, and so on. Rather than editing the script for every design, that configuration is supplied externally:

```bash
export DESIGN_NAME=CPU_TOP
export REPORT_DIR=./reports
```

Swap the environment and the *same* script now targets a different design — no source changes required:

```bash
export DESIGN_NAME=GPU_TOP
export REPORT_DIR=./gpu_reports
```




## 📌 Quick Reference

| Command | Purpose |
|---------|---------|
| `$env(NAME)` | Read an environment variable |
| `set env(NAME) value` | Set an environment variable inside Tcl |
| `info exists env(NAME)` | Check whether it exists |
| `export NAME=value` | Set an environment variable in Bash |
| `echo $NAME` | Display an environment variable in Bash |

---

## ▶️ Running the Exercises

```bash
cd ~/Projects/tcl_learning/16-Environment-Variables

tclsh exercise01_read_env.tcl
tclsh exercise02_check_env.tcl
tclsh exercise03_set_env.tcl
tclsh exercise04_env_configuration.tcl
tclsh mini_project_env_config.tcl
```

---

## 📊 Module Progress

| Component    | Topic                              | Status |
|--------------|--------------------------------------|:------:|
| Exercise 1   | Read Environment Variables          | ✅ |
| Exercise 2   | Check Environment Variables         | ✅ |
| Exercise 3   | Set Environment Variables           | ✅ |
| Exercise 4   | Environment-Based Configuration     | ✅ |
| Mini Project | Environment Configuration Utility   | ✅ |

---

---
