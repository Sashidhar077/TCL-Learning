# Module 14 – Advanced Error Handling in Tcl

## 📖 Overview

Error handling is essential for writing reliable and production-ready Tcl scripts. Unhandled errors can cause entire execution flows to terminate prematurely.

In **EDA/VLSI automation**, scripts process massive design datasets, parse external tool logs, and interact with file systems. Implementing robust exception handling prevents long-running synthesis, layout, or static timing analysis (STA) jobs from crashing unexpectedly.

This module covers Tcl's primary error prevention and exception mechanics:
* `catch`
* `error`
* `try`
* `throw`

---

## 🎯 Learning Objectives

By completing this module, you will learn to:

* Intercept execution errors using `catch` without crashing the program.
* Extract error messages and option dictionaries during runtime failures.
* Raise custom runtime exceptions using `error` and `throw`.
* Safeguard file read/write operations against missing or locked files.
* Implement structured error blocks using modern `try ... on error` mechanics.
* Categorize exceptions using custom error codes (`-errorcode`).
* Validate user input safely to ensure robust numerical operations.
* Build an error-safe command-line calculator.

---

## 📚 Topics Covered

1. **Basic `catch`** – Detecting execution failures and exit codes.
2. **Catching Error Messages** – Intercepting result strings from failed routines.
3. **`error` Command** – Deliberately raising application errors.
4. **File Error Handling** – Managing I/O failures gracefully.
5. **`try` Command** – Structured exception handling with `try` blocks.
6. **`throw` Command** – Raising typed exceptions with error codes.
7. **Error Codes** – Programmatically inspecting error classifications.
8. **Input Validation** – Safeguarding numeric parsing against bad input.
9. **Mini Project** – Building an Error-Safe Calculator.

---

## 📂 Folder Structure

```text
14-Error-Handling/
│
├── README.md
├── exercise01_basic_catch.tcl
├── exercise02_catch_error_message.tcl
├── exercise03_error_command.tcl
├── exercise04_file_error_handling.tcl
├── exercise05_try_command.tcl
├── exercise06_throw_command.tcl
├── exercise07_error_codes.tcl
├── exercise08_input_error_handling.tcl
└── mini_project_error_safe_calculator.tcl

```

---

## 📝 Exercises & Key Concepts

### Exercise 1: Basic `catch`

* **File:** `exercise01_basic_catch.tcl`
* **Concept:** Intercept command status integer (`0` for success, `1` for error).

```tcl
if {[catch {expr {10 / 2}} result]} {
    puts "Error: $result"
} else {
    puts "Result: $result"
}

```

---

### Exercise 2: Catching Error Messages

* **File:** `exercise02_catch_error_message.tcl`
* **Concept:** Capture runtime exception messages directly into a variable.

```tcl
if {[catch {expr {10 / 0}} result]} {
    puts "Error caught: $result"  ;# Output: divide by zero
}

```

---

### Exercise 3: Using the `error` Command

* **File:** `exercise03_error_command.tcl`
* **Concept:** Manually throw an error when validation conditions fail.

```tcl
proc check_age {age} {
    if {$age < 18} {
        error "Person must be 18 or older"
    }
}

```

---

### Exercise 4: File Error Handling

* **File:** `exercise04_file_error_handling.tcl`
* **Concept:** Wrap `open` calls in `catch` blocks to handle missing or unreadable files gracefully.

```tcl
if {[catch {open "missing.txt" r} fileHandle]} {
    puts "Error: Unable to open file"
} else {
    close $fileHandle
}

```

---

### Exercise 5: `try` Command

* **File:** `exercise05_try_command.tcl`
* **Concept:** Structured exception handling using modern block mechanics.

```tcl
try {
    set result [expr {10 / 0}]
} on error {message options} {
    puts "Error: $message"
}

```

---

### Exercise 6: `throw` Command

* **File:** `exercise06_throw_command.tcl`
* **Concept:** Raise structured exceptions along with specific error-type tags.

```tcl
throw {INVALID_MARKS} "Marks must be between 0 and 100"

```

---

### Exercise 7: Error Codes

* **File:** `exercise07_error_codes.tcl`
* **Concept:** Extract and evaluate error classifications using `-errorcode` from the options dictionary.

```tcl
try {
    throw {INVALID_AGE} "Age must be 18 or older"
} on error {msg opts} {
    set err_code [dict get $opts -errorcode]
    puts "Error Type: [lindex $err_code 0]"  ;# Output: INVALID_AGE
}

```

---

### Exercise 8: Input Validation

* **File:** `exercise08_input_error_handling.tcl`
* **Concept:** Validate non-numeric user inputs dynamically to protect downstream mathematical evaluations.

---

## 🚀 Mini Project – Error-Safe Calculator

* **File:** `mini_project_error_safe_calculator.tcl`
* **Objective:** Create a command-line utility that prompts for two numbers, validates both inputs, performs addition, and safely catches bad inputs without terminating execution.

### Expected Behavior

```text
Enter first number: 10
Enter second number: 20

Sum: 30.0

```

```text
Enter first number: abc
Enter second number: 20

Error: Please enter valid numbers

```

---

## 📌 Command Reference Summary

| Command | Purpose | Example |
| --- | --- | --- |
| `catch {cmd} var` | Catches runtime errors and stores outcome | `catch {expr {1/0}} msg` |
| `error msg` | Triggers a runtime error | `error "Invalid parameter"` |
| `try { ... }` | Evaluates block with structured handlers | `try { ... } on error {m o} { ... }` |
| `throw type msg` | Raises an error with a custom error code | `throw {FILE_NOT_FOUND} "Missing report"` |

---

## 🎯 EDA/VLSI Real-World Application

In EDA tool scripts (e.g., Synopsys Primetime, Cadence Innovus), missing files or missing design objects should not abort the whole script run. Using structured error handling allows scripts to report missing data and proceed safely:

```tcl
if {[catch {open "timing_report.rpt" r} fp]} {
    puts "WARNING: Timing report unavailable. Skipping analysis phase."
} else {
    # Parse timing paths...
    close $fp
}

```

---

## ▶️ Execution Commands

To execute the individual exercise scripts:

```bash
tclsh exercise01_basic_catch.tcl
tclsh exercise02_catch_error_message.tcl
tclsh exercise03_error_command.tcl
tclsh exercise04_file_error_handling.tcl
tclsh exercise05_try_command.tcl
tclsh exercise06_throw_command.tcl
tclsh exercise07_error_codes.tcl
tclsh exercise08_input_error_handling.tcl

```

To run the mini project:

```bash
tclsh mini_project_error_safe_calculator.tcl

```

---

## 📊 Module Progress

| Item | Topic | Status |
| --- | --- | --- |
| Exercise 1 | Basic `catch` | ✅ |
| Exercise 2 | Catching Error Messages | ✅ |
| Exercise 3 | `error` Command | ✅ |
| Exercise 4 | File Error Handling | ✅ |
| Exercise 5 | `try` Command | ✅ |
| Exercise 6 | `throw` Command | ✅ |
| Exercise 7 | Error Codes | ✅ |
| Exercise 8 | Input Validation | ✅ |
| Mini Project | Error-Safe Calculator | ✅ |

