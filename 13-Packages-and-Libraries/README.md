# Module 13 – Packages & Libraries in Tcl

## 📖 Overview

Tcl packages and libraries allow us to create **reusable and modular code**. Instead of writing the same procedures repeatedly across different Tcl scripts, we can encapsulate related procedures inside a package and load them whenever needed.

The core commands covered in this module are:
* `package provide`
* `package require`
* `package ifneeded`
* `pkgIndex.tcl`
* `auto_path`

Packages are essential for building larger Tcl frameworks and structured **EDA/VLSI automation projects**.

---

## 🎯 Learning Objectives

After completing this module, you will be able to:

* Understand the concept and benefits of Tcl packages.
* Declare a package using `package provide`.
* Load a package using `package require`.
* Manage package versioning effectively.
* Create reusable custom Tcl libraries.
* Integrate namespaces within packages for clean scoping.
* Configure `pkgIndex.tcl` to index custom packages.
* Modify the Tcl package search path using `auto_path`.
* Build modular Tcl applications.

---

## 📚 Topics Covered

1. **`package provide`** – Declaring a package name and version.
2. **`package require`** – Loading a package into a script.
3. **Package Versions** – Requesting and enforcing version constraints.
4. **Creating Custom Packages** – Writing reusable `.tcl` package files.
5. **Loading Custom Packages** – Importing user-defined modules.
6. **Packages with Namespaces** – Encapsulating package procedures.
7. **Package Search Path** – Managing `auto_path` for package discovery.
8. **Reusable Tcl Libraries** – Structuring general-purpose helpers.
9. **`pkgIndex.tcl` Indexing** – Mapping package names to file locations.
10. **Mini Project** – Building a reusable Student Utility Package.

---

## 📂 Folder Structure

```text
13-Packages-and-Libraries/
│
├── README.md
├── pkgIndex.tcl
│
├── MyUtils.tcl
├── Calculator.tcl
├── Logger.tcl
├── greeting.tcl
├── StringUtils.tcl
├── StudentUtils.tcl
│
├── exercise01_package_provide.tcl
├── exercise02_package_require.tcl
├── exercise03_package_versions.tcl
├── exercise04_creating_package.tcl
├── exercise05_loading_custom_package.tcl
├── exercise06_package_namespace.tcl
├── exercise07_package_path.tcl
├── exercise08_reusable_library.tcl
│
└── mini_project_tcl_utility_package.tcl

```

---

## 📝 Exercises & Key Concepts

### Exercise 1 – `package provide`

* **File:** `exercise01_package_provide.tcl`
* **Concept:** Declares a package's availability to the interpreter using `package provide MyUtils 1.0`.

### Exercise 2 – `package require`

* **File:** `exercise02_package_require.tcl`
* **Concept:** Loads an available package into the current environment using `package require MyUtils 1.0`.

### Exercise 3 – Package Versions

* **File:** `exercise03_package_versions.tcl`
* **Concept:** Handles version checks and queries the currently provided version using `package provide PackageName`.

### Exercise 4 – Creating a Custom Package

* **File:** `exercise04_creating_package.tcl`
* **Concept:** Writes a modular `.tcl` script containing routines (`add`, `multiply`) under a `Calculator` namespace.

### Exercise 5 – Loading a Custom Package

* **File:** `exercise05_loading_custom_package.tcl`
* **Concept:** Extends `auto_path` dynamically to locate and load custom packages from a relative path.

### Exercise 6 – Package + Namespace

* **File:** `exercise06_package_namespace.tcl`
* **Concept:** Combines namespaces and packages to prevent variable/procedure naming collisions.

### Exercise 7 – Package Search Path (`auto_path`)

* **File:** `exercise07_package_path.tcl`
* **Concept:** Inspects and appends custom script directories to `$auto_path` for reliable package discovery.

### Exercise 8 – Reusable Tcl Library

* **File:** `exercise08_reusable_library.tcl`
* **Concept:** Builds a reusable library (`StringUtils`) providing text-manipulation utilities across scripts.

---

## 📌 `pkgIndex.tcl` Mechanism

The `pkgIndex.tcl` file tells Tcl how to locate and load packages when `package require` is called.

Example `pkgIndex.tcl` contents:

```tcl
package ifneeded MyUtils 1.0 [list source [file join $dir MyUtils.tcl]]
package ifneeded Calculator 1.0 [list source [file join $dir Calculator.tcl]]
package ifneeded Logger 1.0 [list source [file join $dir Logger.tcl]]
package ifneeded greet 1.0 [list source [file join $dir greeting.tcl]]
package ifneeded StringUtils 1.0 [list source [file join $dir StringUtils.tcl]]
package ifneeded StudentUtils 1.0 [list source [file join $dir StudentUtils.tcl]]

```

---

## 🔄 Package Loading Flow

```text
Application Script
       │
       │ package require
       ↓
   auto_path
       │
       ↓
  pkgIndex.tcl
       │
       │ package ifneeded
       ↓
 Package .tcl File
       │
       │ package provide
       ↓
 Package Loaded

```

---

## 🚀 Mini Project – Student Utility Package

* **Files:** `StudentUtils.tcl`, `mini_project_tcl_utility_package.tcl`
* **Objective:** Implement a reusable `StudentUtils` package containing grade evaluation and student details formatting routines.

### Expected Output

```text
Student: Ravi
Marks: 85
Grade: B

```

---

## 🎯 EDA/VLSI Real-World Application

In enterprise VLSI automation, scripts are divided into modular, domain-specific packages rather than monolithic files:

```text
EDA Framework/
├── timing_utils.tcl     ;# Timing constraint & report helpers
├── power_utils.tcl      ;# Power analysis utilities
├── cell_utils.tcl       ;# Netlist and cell querying routines
└── report_utils.tcl     ;# Log parsing and summary formatters

```

Top-level synthesis/implementation scripts load only required components:

```tcl
package require TimingUtils 1.0
package require PowerUtils 1.0

```

---

## 📌 Command Summary

| Command | Purpose |
| --- | --- |
| `package provide <name> <ver>` | Declares a package and its version |
| `package require <name> <ver>` | Loads a specific version of a package |
| `package ifneeded <name> <ver> <script>` | Indexing command mapping packages to scripts |
| `lappend auto_path <dir>` | Adds a directory to the package search path |

---


## ▶️ Execution Commands

Run the exercise scripts:

```bash
tclsh exercise01_package_provide.tcl
tclsh exercise02_package_require.tcl
tclsh exercise03_package_versions.tcl
tclsh exercise04_creating_package.tcl
tclsh exercise05_loading_custom_package.tcl
tclsh exercise06_package_namespace.tcl
tclsh exercise07_package_path.tcl
tclsh exercise08_reusable_library.tcl

```

Run the mini project:

```bash
tclsh mini_project_tcl_utility_package.tcl

```

---

## 📊 Module Progress

| Item | Topic | Status |
| --- | --- | --- |
| Exercise 1 | `package provide` | ✅ |
| Exercise 2 | `package require` | ✅ |
| Exercise 3 | Package Versions | ✅ |
| Exercise 4 | Creating a Custom Package | ✅ |
| Exercise 5 | Loading a Custom Package | ✅ |
| Exercise 6 | Package + Namespace | ✅ |
| Exercise 7 | Package Search Path (`auto_path`) | ✅ |
| Exercise 8 | Reusable Tcl Library | ✅ |
| Mini Project | Student Utility Package | ✅ |

