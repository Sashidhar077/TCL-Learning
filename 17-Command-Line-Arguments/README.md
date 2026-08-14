# Module 17 – Command-Line Arguments in Tcl

## 📖 Overview

Command-line arguments allow a Tcl script to receive input directly from the Linux terminal.

Instead of modifying a Tcl script every time you want to use different values, you can pass those values when running the script.

For example:

```bash
tclsh script.tcl CPU_TOP 500
````

The Tcl script can receive:

```text
CPU_TOP
500
```

This makes Tcl programs more flexible, reusable, and suitable for automation.

Command-line arguments are especially useful in **Linux-based EDA/VLSI automation**, where the same script may need to process different designs, frequencies, report directories, or configuration values.

---

# 🎯 Learning Objectives

After completing this module, you will be able to:

* Understand command-line arguments
* Use `argc`
* Use `argv`
* Understand `argv0`
* Access individual arguments using `lindex`
* Validate the number of arguments
* Display usage information
* Use `exit` to stop a script
* Create optional arguments
* Provide default values
* Build reusable command-line Tcl scripts

---

# 📚 Topics Covered

| Topic                      | Tcl Concept            |
| -------------------------- | ---------------------- |
| Number of arguments        | `argc`                 |
| All arguments              | `argv`                 |
| Script name/path           | `argv0`                |
| Access individual argument | `lindex`               |
| Validate arguments         | `if`                   |
| Stop execution             | `exit`                 |
| Optional arguments         | `argc` + `if`          |
| Default values             | Conditional assignment |

---

# 📂 Folder Structure

```text
17-Command-Line-Arguments/
│
├── README.md
│
├── exercise01_argc_argv.tcl
├── exercise02_argument_access.tcl
├── exercise03_argument_validation.tcl
├── exercise04_optional_arguments.tcl
│
└── mini_project_command_line_config.tcl
```

---

# 1. Understanding `argc`

`argc` contains the number of command-line arguments passed to the Tcl script.

Example:

```bash
tclsh script.tcl CPU_TOP 500
```

There are two arguments:

```text
CPU_TOP
500
```

Therefore:

```tcl
puts $argc
```

produces:

```text
2
```

### Basic Pattern

```tcl
puts "Number of arguments: $argc"
```

---

# 2. Understanding `argv`

`argv` contains all command-line arguments as a Tcl list.

For:

```bash
tclsh script.tcl CPU_TOP 500
```

`argv` contains:

```text
CPU_TOP 500
```

You can display all arguments using:

```tcl
puts $argv
```

Example:

```text
CPU_TOP 500
```

---

# 3. Understanding `argv0`

`argv0` contains the name or path used to invoke the Tcl script.

For example:

```bash
tclsh myscript.tcl CPU_TOP
```

`argv0` represents:

```text
myscript.tcl
```

It can be displayed using:

```tcl
puts $argv0
```

`argv0` is useful when a script needs to identify how it was invoked.

---

# 4. Accessing Individual Arguments

Because `argv` is a Tcl list, individual arguments can be accessed using `lindex`.

For:

```bash
tclsh script.tcl CPU_TOP 500
```

the arguments are:

```text
Index 0 → CPU_TOP
Index 1 → 500
```

Therefore:

```tcl
set design_name [lindex $argv 0]
set frequency [lindex $argv 1]
```

Now:

```text
design_name → CPU_TOP
frequency   → 500
```

### Important

Tcl list indexing starts at **0**.

```text
argv
 │
 ├── 0 → First argument
 ├── 1 → Second argument
 └── 2 → Third argument
```

---

# 5. Validating Arguments

A script should normally check whether the user supplied the required number of arguments.

Example:

```tcl
if {$argc != 2} {

    puts "Usage: tclsh script.tcl <design_name> <frequency>"

    exit 1
}
```

This prevents the script from continuing with incomplete input.

### Example

Correct:

```bash
tclsh script.tcl CPU_TOP 500
```

Incorrect:

```bash
tclsh script.tcl CPU_TOP
```

The user should receive a usage message instead of unexpected behavior.

---

# 6. The `exit` Command

The `exit` command terminates a Tcl script.

Common usage:

```tcl
exit 0
```

generally indicates successful completion.

```tcl
exit 1
```

generally indicates an error or failure.

For example:

```tcl
if {$argc != 2} {

    puts "Invalid arguments"

    exit 1
}
```

---

# 7. Optional Arguments

Command-line arguments don't always need to be mandatory.

For example, a script can require a design name but make the frequency optional.

```bash
tclsh script.tcl CPU_TOP
```

If the frequency isn't supplied, the script can use:

```text
100 MHz
```

If the user provides:

```bash
tclsh script.tcl CPU_TOP 500
```

the script uses:

```text
500 MHz
```

### General Pattern

```tcl
set frequency 100

if {$argc == 2} {
    set frequency [lindex $argv 1]
}
```

This is a simple way to provide default values.

---

# 🧪 Exercises

## Exercise 1 – `argc` and `argv`

### File

```text
exercise01_argc_argv.tcl
```

### Task

Create a script that:

* Prints the number of arguments.
* Prints all supplied arguments.

Example:

```bash
tclsh exercise01_argc_argv.tcl CPU_TOP ASIC
```

Expected:

```text
Number of arguments: 2
Arguments: CPU_TOP ASIC
```

### Concepts

```text
argc
argv
```

---

## Exercise 2 – Access Individual Arguments

### File

```text
exercise02_argument_access.tcl
```

### Task

Accept:

```text
Design Name
Clock Frequency
```

Example:

```bash
tclsh exercise02_argument_access.tcl CPU_TOP 500
```

Expected:

```text
Design Name: CPU_TOP
Clock Frequency: 500 MHz
```

### Concepts

```text
argv
lindex
```

---

## Exercise 3 – Argument Validation

### File

```text
exercise03_argument_validation.tcl
```

### Task

Require exactly two arguments.

If the user provides the wrong number of arguments, display:

```text
Usage: tclsh exercise03_argument_validation.tcl <design_name> <frequency>
```

and terminate the script.

### Concepts

```text
argc
if
exit
argv
```

---

## Exercise 4 – Optional Arguments

### File

```text
exercise04_optional_arguments.tcl
```

### Task

Accept:

```text
Design Name
```

and optionally:

```text
Frequency
```

Use:

```text
100 MHz
```

as the default frequency.

Example:

```bash
tclsh exercise04_optional_arguments.tcl CPU_TOP
```

Output:

```text
Design Name: CPU_TOP
Frequency: 100 MHz
```

With a supplied frequency:

```bash
tclsh exercise04_optional_arguments.tcl CPU_TOP 800
```

Output:

```text
Design Name: CPU_TOP
Frequency: 800 MHz
```

---

# 🚀 Mini Project – Command-Line Configuration Tool

## 🎯 Objective

Create a simple Tcl configuration utility that accepts three command-line arguments:

```text
Design Name
Clock Frequency
Report Directory
```

Example:

```bash
tclsh mini_project_command_line_config.tcl CPU_TOP 500 ./reports
```

The program should display:

```text
=================================
     DESIGN CONFIGURATION
=================================
Design Name : CPU_TOP
Frequency   : 500 MHz
Report Dir  : ./reports
=================================
```

---

# 🧠 Mini Project Flow

```text
Linux Terminal
      │
      │
      ↓
tclsh script.tcl
      │
      ↓
    argc
      │
      ↓
    argv
      │
      ↓
Validate Arguments
      │
      ↓
Read Arguments
      │
      ↓
Display Configuration
```

---

# 🎯 EDA/VLSI Application

Command-line arguments are extremely useful in EDA automation.

Instead of hard-coding a design:

```tcl
set design_name "CPU_TOP"
```

you can pass the design from the terminal:

```bash
tclsh run_flow.tcl CPU_TOP
```

For another design:

```bash
tclsh run_flow.tcl GPU_TOP
```

The Tcl script does not need to be modified.

You can also pass multiple configuration values:

```bash
tclsh run_flow.tcl CPU_TOP 500 ./reports
```

This approach is useful for:

* Design automation
* Batch processing
* Regression testing
* Timing analysis
* Report generation
* Power analysis
* Multiple design runs
* Automated EDA flows

---

# 💡 Command-Line Argument Flow in EDA

```text
Design Name
     │
Clock Frequency
     │
Report Directory
     │
     ↓
Command Line
     │
     ↓
Tcl Script
     │
     ├── Validate
     │
     ├── Process
     │
     └── Generate Reports
```

Later, this concept will be combined with:

```text
Environment Variables
        +
Command-Line Arguments
        +
File Processing
        +
Linux Commands
        +
EDA Tool Commands
        ↓
EDA Automation
```

---

# 📌 Important Commands and Variables

| Name     | Purpose                                |
| -------- | -------------------------------------- |
| `argc`   | Number of command-line arguments       |
| `argv`   | List containing command-line arguments |
| `argv0`  | Name/path used to invoke the script    |
| `lindex` | Access an individual argument          |
| `if`     | Validate arguments                     |
| `exit`   | Terminate the script                   |

---




# ▶️ Running the Exercises

From the module directory:

```bash
cd ~/Projects/tcl_learning/17-Command-Line-Arguments
```

### Exercise 1

```bash
tclsh exercise01_argc_argv.tcl CPU_TOP ASIC
```

### Exercise 2

```bash
tclsh exercise02_argument_access.tcl CPU_TOP 500
```

### Exercise 3

```bash
tclsh exercise03_argument_validation.tcl CPU_TOP 500
```

### Exercise 4

```bash
tclsh exercise04_optional_arguments.tcl CPU_TOP 500
```

### Mini Project

```bash
tclsh mini_project_command_line_config.tcl CPU_TOP 500 ./reports
```

---

# 📊 Module Progress

| Component    | Topic                      | Status |
| ------------ | -------------------------- | :----: |
| Exercise 1   | `argc` & `argv`            |    ✅   |
| Exercise 2   | Individual Arguments       |    ✅   |
| Exercise 3   | Argument Validation        |    ✅   |
| Exercise 4   | Optional Arguments         |    ✅   |
| Mini Project | Command-Line Configuration |    ✅   |

---

---

