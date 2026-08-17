# Module 20 — Advanced Tcl Programming

## 📌 Overview

This module moves beyond basic Tcl programming and introduces advanced concepts that help in building clean, reusable, and scalable Tcl programs.

The module focuses on procedures, variable scope, recursion, and passing procedures as arguments.

These concepts are important for developing structured Tcl scripts and will become useful later when working with EDA automation and larger Tcl-based flows.

---

## 🎯 Learning Objectives

By the end of this module, you will understand:

- Variable scope
- Global variables
- The `upvar` command
- Returning values from procedures
- Recursion
- Passing procedures as arguments
- Building reusable procedures

---

## 📚 Module Contents

### Exercise 1 — Variable Scope and `global`

**File:** `exercise01_scope_global.tcl`

Learn how variable scope works in Tcl and how the `global` command allows a procedure to access a global variable.

**Concepts:**
- Local variables
- Global variables
- `proc`
- `global`
- `incr`

---

### Exercise 2 — Using `upvar`

**File:** `exercise02_upvar.tcl`

Learn how a procedure can access and modify a variable from its calling scope using `upvar`.

**Concepts:**
- Variable references
- Caller scope
- `upvar`
- Modifying variables inside procedures

---

### Exercise 3 — Recursion

**File:** `exercise03_recursion.tcl`

Learn how a Tcl procedure can call itself to solve a problem recursively.

The exercise uses factorial calculation to demonstrate recursion.

**Concepts:**
- Recursive procedures
- Base cases
- Recursive calls
- `return`
- `expr`

---

### Exercise 4 — Passing Procedures as Arguments

**File:** `exercise04_callback.tcl`

Learn how a procedure can receive another procedure as an argument and execute it.

The exercise demonstrates operations such as addition and multiplication.

**Concepts:**
- Procedure names as arguments
- Callback-style programming
- Reusable procedures
- Dynamic procedure execution

---

# 🚀 Mini Project — Reusable Calculation Utility

**File:** `mini_project_calculation_utility.tcl`

The mini project combines the concepts learned throughout the module to create a reusable command-line calculation utility.

## Supported Operations

- Addition
- Subtraction
- Multiplication
- Division

The user provides the operation and two numbers through command-line arguments.

### Example

```text
tclsh mini_project_calculation_utility.tcl add 10 20