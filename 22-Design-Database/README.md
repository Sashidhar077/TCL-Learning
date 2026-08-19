# Module 22 — EDA Tcl Fundamentals

## 📌 Overview

Module 22 marks the beginning of the **EDA-focused part of Tcl learning**.

In Modules 1–21, we learned general Tcl programming, file processing, system commands, Linux automation, and advanced Tcl concepts.

In this module, we start applying those Tcl concepts to **EDA-style design data**.

The goal is to understand how Tcl can be used to represent, query, filter, analyze, and report information about a digital design.

> **Important:** The exercises in this module use normal Tcl data structures to simulate EDA design objects. Real EDA tools provide their own commands and databases, which we will study in later modules.

---

## 🎯 Module Objectives

In this module ,we try to understand :

* Design cells / instances
* Cell types
* Pins
* Nets
* Design attributes
* Tcl dictionaries for representing design data
* Querying design information
* Filtering design objects
* Counting and analyzing objects
* Generating EDA-style reports

---

## 📚 Module Structure

| Component    | Topic                           | File                               |
| ------------ | ------------------------------- | ---------------------------------- |
| Exercise 1   | Representing Design Cells       | `exercise01_design_cells.tcl`      |
| Exercise 2   | Querying and Filtering Cells    | `exercise02_cell_filtering.tcl`    |
| Exercise 3   | Working with Pins and Nets      | `exercise03_pins_and_nets.tcl`     |
| Exercise 4   | Generate a Design Summary       | `exercise04_design_summary.tcl`    |
| Mini Project | Simple Design Database Analyzer | `mini_project_design_analyzer.tcl` |

---

# Exercise 1 — Representing Design Cells

### Objective

Represent several design cells using a Tcl list:

```text
U1
U2
U3
U4
U5
```

and print each cell with its number.

### Concepts

* Tcl lists
* `set`
* `foreach`
* `puts`
* `incr`

### Example Output

```text
Cell 1: U1
Cell 2: U2
Cell 3: U3
Cell 4: U4
Cell 5: U5
```

### EDA Connection

A real digital design may contain thousands or millions of cell instances.

Conceptually:

```text
Design
  ↓
Cells / Instances
  ↓
Process each cell
  ↓
Analyze or report information
```

---

# Exercise 2 — Querying and Filtering Cells

### Objective

Represent cells together with their cell types:

```text
U1 → NAND
U2 → AND
U3 → NAND
U4 → OR
U5 → NAND
```

Then print only the NAND cells.

### Concepts

* Tcl dictionaries
* Key-value pairs
* `dict create`
* `dict for`
* `if`
* String comparison using `eq`

### Example Output

```text
NAND Cells:
U1
U3
U5
```

### EDA Connection

This introduces the idea of **filtering design objects based on attributes**.

Conceptually:

```text
Design
  ↓
Get Cells
  ↓
Check Cell Type
  ↓
Filter NAND Cells
  ↓
Generate Result
```

This is similar in concept to filtering collections of objects in real EDA tools.

---

# Exercise 3 — Working with Pins and Nets

### Objective

Represent cells together with their pins:

```text
U1 → A B Y
U2 → A B Y
U3 → A B Y
```

### Concepts

* Nested dictionaries
* `dict set`
* `dict get`
* `dict for`

### Example Output

```text
Cell: U1
Pins: A B Y

Cell: U2
Pins: A B Y

Cell: U3
Pins: A B Y
```

### EDA Design Relationship

A basic digital design can be viewed as:

```text
Design
   │
   ├── Cells
   │     │
   │     └── Pins
   │
   └── Nets
```

A simplified connection can be visualized as:

```text
Cell U1              Cell U2
   Y ───── NET1 ───── A
```

The exercise focuses mainly on representing the **cell → pin** relationship.

---

# Exercise 4 — Generate a Design Summary

### Objective

Analyze the following design:

```text
U1 → NAND
U2 → AND
U3 → NAND
U4 → NAND
U5 → AND
```

Calculate:

* Total cells
* NAND cells
* AND cells

### Example Output

```text
=================================
       DESIGN SUMMARY
=================================
Total Cells : 5
NAND Cells  : 3
AND Cells   : 2
=================================
```

### Concepts

* Dictionaries
* Iteration
* Conditions
* Counters
* `incr`
* Report generation

### EDA Connection

This represents a common EDA automation workflow:

```text
Design Database
      ↓
Query Objects
      ↓
Inspect Attributes
      ↓
Filter
      ↓
Count
      ↓
Generate Report
```

---

# 🚀 Mini Project — Simple Design Database Analyzer

## Objective

The mini project combines the concepts from all four exercises.

The design database contains:

| Cell | Type | Area |
| ---- | ---- | ---: |
| U1   | NAND |  2.5 |
| U2   | AND  |  3.0 |
| U3   | NAND |  2.5 |
| U4   | OR   |  3.2 |
| U5   | NAND |  2.5 |

The program calculates:

* Total number of cells
* Number of NAND cells
* Number of AND cells
* Total area
* Largest cell
* Largest cell area

---

## 🧠 Design Database Representation

The nested Tcl dictionary conceptually represents:

```text
DESIGN
  │
  ├── U1
  │    ├── type → NAND
  │    └── area → 2.5
  │
  ├── U2
  │    ├── type → AND
  │    └── area → 3.0
  │
  ├── U3
  │    ├── type → NAND
  │    └── area → 2.5
  │
  ├── U4
  │    ├── type → OR
  │    └── area → 3.2
  │
  └── U5
       ├── type → NAND
       └── area → 2.5
```

For example:

```tcl
dict set design U1 type NAND area 2.5
```

creates the attributes for `U1`.

---

## 🔍 Analysis Performed

The script iterates through every cell:

```text
Cell
 ↓
Get Type
 ↓
Get Area
 ↓
Count Cell
 ↓
Check Type
 ↓
Calculate Area
 ↓
Check Largest Area
```

---

## 📊 Expected Mini Project Output

```text
========================================
       DESIGN DATABASE ANALYSIS
========================================
Total Cells  : 5
NAND Cells   : 3
AND Cells    : 1
Total Area   : 13.7
Largest Cell : U4
Largest Area : 3.2
========================================
```

> **Note:** The database contains 3 NAND cells, 1 AND cell, and 1 OR cell. Therefore, the correct AND count is **1**.

---

# 🧠 Important Tcl Concepts Learned

### Lists

```tcl
set cells {U1 U2 U3 U4 U5}
```

### Dictionaries

```tcl
dict create
```

### Adding dictionary data

```tcl
dict set
```

### Reading dictionary data

```tcl
dict get
```

### Iterating through dictionaries

```tcl
dict for
```

### Filtering

```tcl
if {$type eq "NAND"} {
    ...
}
```

### Counters

```tcl
incr count
```

### Calculations

```tcl
expr
```

### Report generation

```tcl
puts
```

---

# 🔥 EDA Concepts Introduced

| Concept         | Meaning                                            |
| --------------- | -------------------------------------------------- |
| Cell / Instance | An instance of a library cell in a design          |
| Cell Type       | Type of logic cell, such as NAND, AND, OR          |
| Pin             | Connection point of a cell                         |
| Net             | Electrical connection between pins                 |
| Attribute       | Property associated with a design object           |
| Area            | Physical area associated with a cell               |
| Design Database | Collection of design objects and their information |
| Query           | Retrieving design information                      |
| Filter          | Selecting objects based on a condition             |
| Report          | Organized presentation of analysis results         |

---

# 🔗 EDA Tcl Workflow

The fundamental workflow learned in Module 22 is:

```text
             DESIGN
                │
                ↓
        Store Design Data
                │
                ↓
        Query Design Objects
                │
                ↓
       Get Object Attributes
                │
        ┌───────┴───────┐
        ↓               ↓
      Filter          Analyze
        │               │
        └───────┬───────┘
                ↓
          Generate Report
```

---

# ⚠️ Important Note About Real EDA Tools

The examples in this module are **educational simulations**.

We manually create design information using Tcl:

```tcl
dict set design U1 type NAND area 2.5
```

A real EDA tool already has a design database.

Later, you'll encounter commands conceptually similar to:

```tcl
get_cells
get_pins
get_nets
get_attribute
```

The exact commands and syntax depend on the EDA tool.

The important thing we're learning now is the **Tcl programming logic behind EDA automation**.

---

# 🎯 EDA Automation Flow

The skills from this module will eventually be used in flows such as:

```text
Read Design
    ↓
Query Cells
    ↓
Query Pins
    ↓
Query Nets
    ↓
Get Attributes
    ↓
Filter Objects
    ↓
Calculate Metrics
    ↓
Generate Reports
```

This is the foundation for more advanced **ASIC/EDA Tcl scripting**.

---

# 📂 Final Folder Structure

```text
22-Design-Database/
│
├── README.md
│
├── exercise01_design_cells.tcl
├── exercise02_cell_filtering.tcl
├── exercise03_pins_and_nets.tcl
├── exercise04_design_summary.tcl
│
└── mini_project_design_analyzer.tcl
```


# 📊 Module 22 Progress

| Component    | Topic                    | Status |
| ------------ | ------------------------ | ------ |
| Exercise 1   | Design Cells             | ✅      |
| Exercise 2   | Cell Filtering           | ✅      |
| Exercise 3   | Pins & Nets              | ✅      |
| Exercise 4   | Design Summary           | ✅      |
| Mini Project | Design Database Analyzer | ✅      |

---
