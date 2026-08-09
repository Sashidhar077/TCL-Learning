# Module 8 – Arrays in Tcl

## 📖 Overview

Arrays in Tcl are **key-value data structures** used to store related information under meaningful names instead of numeric indexes.

Unlike lists, which are accessed using indexes (`0`, `1`, `2`...), arrays are accessed using **keys** (`name`, `version`, `status`, etc.).

Arrays are extensively used in **EDA/VLSI Tcl scripting** to store:

- Configuration settings
- Design properties
- Timing information
- Cell attributes
- Tool parameters
- Lookup tables

---

# 📚 Topics Covered

1. Creating Arrays
2. Accessing Array Elements
3. `array set`
4. `array names`
5. `array size`
6. `array exists`
7. `unset`
8. Iterating Through Arrays
9. Mini Project – Student Database Management System

---

# 📂 Folder Structure

```
08-Arrays/
│
├── README.md
├── exercise01_creating_arrays.tcl
├── exercise02_accessing_arrays.tcl
├── exercise03_array_set.tcl
├── exercise04_array_names.tcl
├── exercise05_array_size.tcl
├── exercise06_array_exists.tcl
├── exercise07_unset_array.tcl
├── exercise08_iterating_arrays.tcl
└── mini_project_student_database.tcl
```

---

# 📝 Exercises

## Exercise 1 – Creating Arrays

### Concepts

- Creating arrays
- Key-value pairs
- Basic array syntax
 
### Commands Learned

```tcl
set arrayName(key) value
```

---

## Exercise 2 – Accessing Array Elements

### Concepts

- Reading array values
- Updating values
- Adding new keys

### Commands Learned

```tcl
set array(key)
puts $array(key)
```

---

## Exercise 3 – `array set`

### Concepts

- Initializing arrays using one command
- Creating multiple key-value pairs

### Commands Learned

```tcl
array set arrayName {
    key1 value1
    key2 value2
}
```

---

## Exercise 4 – `array names`

### Concepts

- Retrieve all keys
- Iterate through arrays
- Wildcard filtering

### Commands Learned

```tcl
array names arrayName

array names arrayName "pattern*"
```

---

## Exercise 5 – `array size`

### Concepts

- Count total entries
- Difference between arrays and lists

### Commands Learned

```tcl
array size arrayName
```

---

## Exercise 6 – `array exists`

### Concepts

- Check whether an array exists
- Safe array handling

### Commands Learned

```tcl
array exists arrayName
```

Also learned:

```tcl
info exists arrayName(key)
```

---

## Exercise 7 – `unset`

### Concepts

- Delete a key
- Delete an entire array

### Commands Learned

```tcl
unset arrayName(key)

unset arrayName
```

---

## Exercise 8 – Iterating Through Arrays

### Concepts

- Loop through arrays
- Display reports
- Sorting keys
- Filtering keys

### Commands Learned

```tcl
foreach key [array names arrayName] {

    puts "$key : $arrayName($key)"

}
```

Sorted iteration:

```tcl
foreach key [lsort [array names arrayName]] {

    puts "$key : $arrayName($key)"

}
```

---

# 🚀 Mini Project

## Student Database Management System

### Features

- Create Student Database
- Display Student Information
- Count Entries
- Update Marks
- Add Phone Number
- Delete Grade
- Check Database Existence
- Generate Formatted Report

---

# 📖 Commands Learned

| Command | Purpose |
|----------|----------|
| `set array(key)` | Create/Update an element |
| `$array(key)` | Access value |
| `array set` | Initialize an array |
| `array names` | Get all keys |
| `array size` | Count entries |
| `array exists` | Check whether an array exists |
| `info exists` | Check whether a key exists |
| `unset array(key)` | Remove one element |
| `unset array` | Remove entire array |
| `foreach` | Iterate through array |
| `lsort` | Sort keys |
| `format` | Format output |

---

# 💡 Arrays vs Lists

| Lists | Arrays |
|--------|---------|
| Access using index | Access using key |
| Ordered collection | Key-value collection |
| `lindex` | `$array(key)` |
| `llength` | `array size` |
| Good for sequences | Good for structured data |

---

# 🎯 Real EDA Applications

Arrays are commonly used in EDA automation to store:

- Design Information
- Timing Results
- Cell Properties
- Pin Attributes
- Configuration Parameters
- Tool Settings
- Report Data
- Lookup Tables

Example:

```tcl
array set design {
    top CPU_Core
    technology 5nm
    cells 12450
    clocks 4
    status Completed
}
```

---

---
# ▶️ Run the Programs

Run any exercise using:

```bash
tclsh exercise01_creating_arrays.tcl
```

Example:

```bash
tclsh exercise05_array_size.tcl

tclsh exercise08_iterating_arrays.tcl

tclsh mini_project_student_database.tcl
```

---
