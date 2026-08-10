
# Module 12 – Namespaces in Tcl

## 📖 Overview

A **namespace** in Tcl organizes related variables and procedures into an isolated scope. Namespaces prevent global name collisions and keep large codebases structured, modular, and maintainable.

In EDA/VLSI automation scripts, tool APIs often define hundreds of routines. Grouping functionality inside custom namespaces ensures distinct components (such as timing, power, or cell analysis) operate independently without overwriting each other.

### Simple Example

```tcl
namespace eval math {
    proc add {a b} {
        return [expr {$a + $b}]
    }
}

# Invoking the namespace procedure
puts [math::add 10 20]  ;# Output: 30

```

---

## 🎯 Learning Objectives

By completing this module, you will learn to:

* Create and manage custom Tcl namespaces using `namespace eval`.
* Declare and scope variables inside namespaces using the `variable` command.
* Define and execute namespace-scoped procedures.
* Differentiate between relative paths and fully qualified names (`::`).
* Query runtime environment details using `namespace current` and `namespace exists`.
* Build multi-level hierarchies with nested namespaces (e.g., `eda::timing`).
* Share procedures across contexts using `namespace export` and `namespace import`.
* Organize reusable Tcl automation utilities into structured modules.

---

## 📚 Topics Covered

1. **Creating a Namespace** – Basic `namespace eval` syntax.
2. **Namespace Variables** – Scoping data with `variable`.
3. **Namespace Procedures** – Defining routines inside a namespace.
4. **Fully Qualified Names** – Using `::` global syntax.
5. **Runtime Queries** – `namespace current` and `namespace exists`.
6. **Execution Scope** – Working inside `namespace eval` blocks.
7. **Nested Namespaces** – Hierarchical design (`namespace::subnamespace`).
8. **Export & Import** – Exposing and consuming API procedures.
9. **Mini Project** – Building a structured Tcl Utility Namespace.

---

## 📂 Folder Structure

```text
12-Namespaces/
│
├── README.md
├── exercise01_creating_namespace.tcl
├── exercise02_namespace_variables.tcl
├── exercise03_namespace_procedures.tcl
├── exercise04_fully_qualified_names.tcl
├── exercise05_namespace_commands.tcl
├── exercise06_namespace_eval.tcl
├── exercise07_nested_namespaces.tcl
├── exercise08_namespace_export_import.tcl
└── mini_project_tcl_utility_namespace.tcl

```

---

## 📝 Exercises & Key Concepts

### Exercise 1: Creating a Namespace

* **File:** `exercise01_creating_namespace.tcl`
* **Concept:** Create a namespace container and execute basic routines within it.

### Exercise 2: Namespace Variables

* **File:** `exercise02_namespace_variables.tcl`
* **Concept:** Declare scoped variables using `variable` and access them within local procedures.

### Exercise 3: Namespace Procedures

* **File:** `exercise03_namespace_procedures.tcl`
* **Concept:** Encapsulate multiple operational routines (`add`, `subtract`, `multiply`) inside a single namespace context.

### Exercise 4: Fully Qualified Names

* **File:** `exercise04_fully_qualified_names.tcl`
* **Concept:** Reference global and scoped items directly from anywhere in the script using leading double colons (`::company::name`).

### Exercise 5: `namespace current` & `namespace exists`

* **File:** `exercise05_namespace_commands.tcl`
* **Concept:** Introspect execution context dynamically and safely verify namespace existence before execution.

### Exercise 6: `namespace eval` Block Mechanics

* **File:** `exercise06_namespace_eval.tcl`
* **Concept:** Execute dynamic blocks of code directly within a target namespace context.

### Exercise 7: Nested Namespaces

* **File:** `exercise07_nested_namespaces.tcl`
* **Concept:** Construct hierarchical module structures (e.g., `eda::timing` vs. `eda::power`) to separate distinct domain logic.

### Exercise 8: Exporting & Importing Commands

* **File:** `exercise08_namespace_export_import.tcl`
* **Concept:** Selectively export public interfaces using `namespace export` and bring them into foreign contexts using `namespace import`.

---

## 🚀 Mini Project – Tcl Utility Namespace

* **File:** `mini_project_tcl_utility_namespace.tcl`
* **Objective:** Design and implement a structured `utils` utility module containing helper routines (`greet`, `add`, `square`).

### Expected Output

```text
Hello from Tcl Utility!
Addition: 30
Square: 25

```

---

## 🎯 EDA/VLSI Real-World Application

In enterprise VLSI scripts (Synopsys Design Compiler, Cadence Innovus, Siemens Primetime), flat procedure names cause naming collisions. Namespaces solve this by organizing tool commands into domain-specific modules:

```text
eda/
├── timing/
│   ├── analyze
│   └── report
├── power/
│   ├── analyze
│   └── report
└── cells/
    ├── get
    └── report

```

```tcl
# Explicit execution prevents command collisions:
eda::timing::report
eda::power::report

```

---

## 📌 Command Reference Summary

| Command | Purpose | Example |
| --- | --- | --- |
| `namespace eval` | Defines or enters a namespace scope | `namespace eval demo { ... }` |
| `variable` | Declares a namespace variable | `variable status "OK"` |
| `namespace current` | Returns the current namespace scope | `puts [namespace current]` |
| `namespace exists` | Checks if a namespace exists (1/0) | `namespace exists ::eda` |
| `namespace export` | Marks procedures for export | `namespace export proc1 proc2` |
| `namespace import` | Imports exported procedures | `namespace import ::math::*` |

---

## ▶️ Execution Commands

To execute the exercise scripts locally:

```bash
tclsh exercise01_creating_namespace.tcl
tclsh exercise02_namespace_variables.tcl
tclsh exercise03_namespace_procedures.tcl
tclsh exercise04_fully_qualified_names.tcl
tclsh exercise05_namespace_commands.tcl
tclsh exercise06_namespace_eval.tcl
tclsh exercise07_nested_namespaces.tcl
tclsh exercise08_namespace_export_import.tcl

```

To run the mini project:

```bash
tclsh mini_project_tcl_utility_namespace.tcl

```

---

## 📊 Module Progress

| Item | Topic | Status |
| --- | --- | --- |
| Exercise 1 | Creating a Namespace | ✅ |
| Exercise 2 | Namespace Variables | ✅ |
| Exercise 3 | Namespace Procedures | ✅ |
| Exercise 4 | Fully Qualified Names | ✅ |
| Exercise 5 | `namespace current` & `namespace exists` | ✅ |
| Exercise 6 | `namespace eval` Mechanics | ✅ |
| Exercise 7 | Nested Namespaces | ✅ |
| Exercise 8 | Export & Import | ✅ |
| Mini Project | Tcl Utility Namespace | ✅ |

---