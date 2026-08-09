# Module 7 – Lists in Tcl

## 📖 Overview

A **list** in Tcl is an ordered collection of values.

Lists are one of the most commonly used data structures in Tcl because they make it easy to store and process multiple values.

Lists are especially important in **EDA/VLSI automation**, where Tcl scripts frequently work with collections of:

- Cells
- Pins
- Nets
- Ports
- Timing paths
- File names
- Design objects

---

# 🎯 Learning Objectives

After completing this module, you will be able to:

- Create Tcl lists
- Access list elements
- Find the length of a list
- Add elements to a list
- Insert elements into a list
- Replace list elements
- Search lists
- Sort lists
- Work with nested lists
- Iterate through lists
- Build automation scripts using lists

---

# 📚 Topics Covered

1. Creating Lists
2. Accessing Elements with `lindex`
3. Finding List Length with `llength`
4. Adding Elements with `lappend`
5. Inserting and Replacing Elements
6. Searching Lists with `lsearch`
7. Sorting Lists with `lsort`
8. Nested Lists
9. Processing Lists with Loops
10. Mini Project – Design Database Manager

---

# 📂 Folder Structure

```text
07-Lists/
│
├── README.md
├── exercise01_creating_lists.tcl
├── exercise02_lindex.tcl
├── exercise03_llength.tcl
├── exercise04_lappend.tcl
├── exercise05_linsert_lreplace.tcl
├── exercise06_lsearch.tcl
├── exercise07_lsort.tcl
├── exercise08_nested_lists.tcl
└── mini_project_design_database_manager.tcl
```

---

# 📝 Exercises

## Exercise 1 – Creating Lists

A list can be created using braces:

```tcl
set cells {AND OR NAND NOR}
```

You can also create a list using:

```tcl
set cells [list AND OR NAND NOR]
```

Display the list:

```tcl
puts $cells
```

Output:

```text
AND OR NAND NOR
```

---

# Exercise 2 – `lindex`

`lindex` is used to access an element at a specific index.

```tcl
set cells {AND OR NAND NOR}

puts [lindex $cells 0]
puts [lindex $cells 2]
```

Output:

```text
AND
NAND
```

### Important

Tcl list indexing starts from **0**.

```text
Index:   0    1     2     3
         ↓    ↓     ↓     ↓
List:   AND  OR   NAND   NOR
```

---

# Exercise 3 – `llength`

`llength` returns the number of elements in a list.

```tcl
set cells {AND OR NAND NOR}

set count [llength $cells]

puts "Number of cells: $count"
```

Output:

```text
Number of cells: 4
```

---

# Exercise 4 – `lappend`

`lappend` adds an element to the end of a list.

```tcl
set cells {AND OR}

lappend cells NAND
lappend cells NOR

puts $cells
```

Output:

```text
AND OR NAND NOR
```

---

# Exercise 5 – `linsert` and `lreplace`

## `linsert`

`linsert` inserts an element at a specific index.

```tcl
set cells {AND OR NOR}

set cells [linsert $cells 2 NAND]

puts $cells
```

Output:

```text
AND OR NAND NOR
```

---

## `lreplace`

`lreplace` replaces one or more list elements.

```tcl
set cells {AND OR NAND NOR}

set cells [lreplace $cells 2 2 XOR]

puts $cells
```

Output:

```text
AND OR XOR NOR
```

---

# Exercise 6 – `lsearch`

`lsearch` searches for an element in a list.

```tcl
set cells {AND OR NAND NOR}

set index [lsearch $cells NAND]

puts "NAND index: $index"
```

Output:

```text
NAND index: 2
```

If an element is not found, `lsearch` normally returns:

```text
-1
```

Example:

```tcl
set index [lsearch $cells XOR]

puts $index
```

Output:

```text
-1
```

---

# Exercise 7 – `lsort`

`lsort` sorts a list.

```tcl
set cells {NOR AND XOR NAND}

set sortedCells [lsort $cells]

puts $sortedCells
```

Output:

```text
AND NAND NOR XOR
```

### Numeric Sorting

For numbers, use:

```tcl
set numbers {50 10 40 20 30}

set sorted [lsort -integer $numbers]

puts $sorted
```

Output:

```text
10 20 30 40 50
```

---

# Exercise 8 – Nested Lists

A list can contain other lists.

Example:

```tcl
set student1 {Rahul 85 90}
set student2 {Anil 78 88}

set students [list $student1 $student2]

puts $students
```

Nested lists are useful for representing structured data.

Example:

```text
Student 1
    Name       Rahul
    Marks      85
    Attendance 90

Student 2
    Name       Anil
    Marks      78
    Attendance 88
```

---

# 🚀 Mini Project

## Design Database Manager

Build a Tcl program that uses lists to maintain basic design information.

The project should demonstrate:

- Creating lists
- Adding elements
- Searching elements
- Sorting elements
- Accessing elements
- Updating elements
- Iterating through lists

Example design data:

```tcl
set cells {U1 U2 U3 U4 U5}
set types {AND OR NAND NOR XOR}
```

The program can provide operations such as:

```text
================================
Design Database Manager
================================

Cells:
U1
U2
U3
U4
U5

Search Cell
Sort Cells
Add Cell
Remove/Replace Cell
Display Cell Count
```

---

# 📖 Important List Commands

| Command | Purpose |
|---------|---------|
| `list` | Create a list |
| `lindex` | Access an element |
| `llength` | Get list length |
| `lappend` | Add elements |
| `linsert` | Insert elements |
| `lreplace` | Replace elements |
| `lsearch` | Search for elements |
| `lsort` | Sort a list |
| `lrange` | Extract a range of elements |
| `lset` | Modify an element |

---

# 💡 List Indexing

Tcl uses **zero-based indexing**.

For:

```tcl
set cells {U1 U2 U3 U4 U5}
```

The indexes are:

```text
Index     0    1    2    3    4
          ↓    ↓    ↓    ↓    ↓
Value    U1   U2   U3   U4   U5
```

Therefore:

```tcl
lindex $cells 0
```

returns:

```text
U1
```

and:

```tcl
lindex $cells 4
```

returns:

```text
U5
```

---

# 💡 `lindex` vs `lsearch`

| `lindex` | `lsearch` |
|----------|-----------|
| Accesses an element by index | Searches for an element |
| You provide an index | You provide a value/pattern |
| Returns the element | Returns the matching index |

Example:

```tcl
lindex $cells 2
```

returns:

```text
U3
```

While:

```tcl
lsearch $cells U3
```

returns:

```text
2
```

---

# 💡 `lappend` vs `linsert`

| `lappend` | `linsert` |
|-----------|-----------|
| Adds to the end | Inserts at a specific position |
| Simple list expansion | Position-based insertion |

Example:

```tcl
lappend cells U6
```

Adds `U6` at the end.

```tcl
linsert $cells 2 U6
```

Inserts `U6` at index `2`.

---

# 🎯 Real EDA/VLSI Applications

Lists are heavily used in Tcl-based EDA automation.

For example, an EDA tool may return a collection of objects that a script needs to process.

A simple learning example:

```tcl
set cells {U1 U2 U3 U4 U5}

foreach cell $cells {

    puts "Processing cell: $cell"
}
```

Output:

```text
Processing cell: U1
Processing cell: U2
Processing cell: U3
Processing cell: U4
Processing cell: U5
```

Lists can be used to manage:

- Cell names
- Pin names
- Net names
- File names
- Timing paths
- Report entries
- Design object names

---


# ▶️ Run the Programs

Run an exercise using:

```bash
tclsh exercise01_creating_lists.tcl
```

Examples:

```bash
tclsh exercise02_lindex.tcl
tclsh exercise03_llength.tcl
tclsh exercise04_lappend.tcl
tclsh exercise05_linsert_lreplace.tcl
tclsh exercise06_lsearch.tcl
tclsh exercise07_lsort.tcl
tclsh exercise08_nested_lists.tcl
tclsh mini_project_design_database_manager.tcl
```

---

# 📊 Module Progress

| Exercise | Topic | Status |
|----------|-------|--------|
| Exercise 1 | Creating Lists | ✅ |
| Exercise 2 | `lindex` | ✅ |
| Exercise 3 | `llength` | ✅ |
| Exercise 4 | `lappend` | ✅ |
| Exercise 5 | `linsert` & `lreplace` | ✅ |
| Exercise 6 | `lsearch` | ✅ |
| Exercise 7 | `lsort` | ✅ |
| Exercise 8 | Nested Lists | ✅ |
| Mini Project | Design Database Manager | ✅ |

---
