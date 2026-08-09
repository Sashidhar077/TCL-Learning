# Module 11 – Dictionaries in Tcl

## 📖 Overview

A **dictionary** in Tcl is a collection of **key-value pairs**.

Dictionaries are useful when related information needs to be stored together in a structured way.

For example:

```text
name       → Ravi
id         → 101
age        → 22
department → ASIC
salary     → 50000
```

In Tcl:

```tcl
set employee [dict create \
    name Ravi \
    id 101 \
    age 22 \
    department ASIC \
    salary 50000]
```

Dictionaries are especially useful in **EDA/VLSI automation** for storing structured information about cells, pins, timing paths, reports, and design objects.

---

# 🎯 Learning Objectives

After completing this module, you will be able to:

- Create dictionaries
- Access dictionary values
- Add and update key-value pairs
- Check whether a key exists
- Get dictionary keys and values
- Find dictionary size
- Remove dictionary entries
- Iterate through dictionaries
- Create nested dictionaries
- Use dictionaries for structured data
- Build a simple student database

---

# 📚 Topics Covered

1. Creating Dictionaries
2. `dict get`
3. `dict set`
4. `dict exists`
5. `dict keys`
6. `dict values`
7. `dict size`
8. `dict unset`
9. `dict for`
10. Nested Dictionaries
11. Mini Project – Student Database

---

# 📂 Folder Structure

```text
11-Dictionaries/
│
├── README.md
├── exercise01_creating_dictionaries.tcl
├── exercise02_dict_get.tcl
├── exercise03_dict_set.tcl
├── exercise04_dict_exists_size.tcl
├── exercise05_dict_keys_values.tcl
├── exercise06_dict_unset.tcl
├── exercise07_dict_iteration.tcl
├── exercise08_nested_dictionaries.tcl
└── mini_project_student_database.tcl
```

---

# 📝 Exercises

## Exercise 1 – Creating Dictionaries

Use `dict create` to create a dictionary.

Example:

```tcl
set employee [dict create \
    name Ravi \
    id 101 \
    age 22 \
    department VLSI]
```

Display the dictionary:

```tcl
puts $employee
```

### Key Concept

A dictionary stores information as:

```text
key → value
```

---

# Exercise 2 – Accessing Values with `dict get`

`dict get` is used to retrieve a value associated with a key.

Example:

```tcl
set employee [dict create \
    name Ravi \
    id 101 \
    department VLSI]

puts [dict get $employee name]
puts [dict get $employee department]
```

Output:

```text
Ravi
VLSI
```

### Syntax

```tcl
dict get $dictionary key
```

---

# Exercise 3 – Adding and Updating Values with `dict set`

`dict set` is used to add a new key or update an existing key.

Example:

```tcl
set employee [dict create \
    name Ravi \
    id 101]

dict set employee salary 50000
dict set employee department ASIC
```

If the key already exists, its value is updated:

```tcl
dict set employee department VLSI
```

---

# Exercise 4 – `dict exists` and `dict size`

## `dict exists`

Checks whether a key exists.

```tcl
if {[dict exists $employee salary]} {
    puts "Salary exists"
}
```

Returns:

```text
1
```

if the key exists, otherwise:

```text
0
```

## `dict size`

Returns the number of key-value pairs.

```tcl
puts [dict size $employee]
```

---

# Exercise 5 – `dict keys` and `dict values`

## `dict keys`

Returns all keys:

```tcl
puts [dict keys $employee]
```

## `dict values`

Returns all values:

```tcl
puts [dict values $employee]
```

Example:

```text
Keys:
name id age department salary

Values:
Ravi 101 22 ASIC 50000
```

---

# Exercise 6 – Removing Entries with `dict unset`

`dict unset` removes a key and its value.

Example:

```tcl
dict unset employee salary
```

The `salary` entry is removed.

You can verify it:

```tcl
puts [dict exists $employee salary]
```

Output:

```text
0
```

---

# Exercise 7 – Iterating with `dict for`

`dict for` is used to process every key-value pair.

Example:

```tcl
dict for {key value} $employee {

    puts "$key = $value"
}
```

Output:

```text
name = Ravi
id = 101
age = 22
department = ASIC
salary = 50000
```

This is particularly useful when processing structured data automatically.

---

# Exercise 8 – Nested Dictionaries

A dictionary can contain another dictionary.

Example:

```tcl
set address [dict create \
    city Hyderabad \
    state Telangana \
    pincode 500001]

set employee [dict create \
    name Ravi \
    id 101 \
    address $address]
```

Access nested values:

```tcl
puts [dict get $employee address city]
```

Output:

```text
Hyderabad
```

Update a nested value:

```tcl
dict set employee address city Bangalore
```

---

# 🚀 Mini Project – Simple Student Database

## 🎯 Objective

Create a simple student database using nested dictionaries.

The database contains multiple students, and each student has:

```text
ID
Name
Age
Branch
Marks
```

Example:

```text
Student 101
    Name   → Ravi
    Age    → 22
    Branch → ECE
    Marks  → 85
```

---

## Database Structure

```text
students
│
├── 101
│   ├── name
│   ├── age
│   ├── branch
│   └── marks
│
├── 102
│   ├── name
│   ├── age
│   ├── branch
│   └── marks
│
└── 103
    ├── name
    ├── age
    ├── branch
    └── marks
```

---

## Features

The mini project demonstrates:

- Creating a dictionary database
- Adding students
- Displaying students
- Searching for a student
- Updating marks
- Displaying all students
- Counting students

---

## Example Code

```tcl
set students [dict create]

dict set students 101 name Ravi
dict set students 101 age 22
dict set students 101 branch ECE
dict set students 101 marks 85

dict set students 102 name Anil
dict set students 102 age 21
dict set students 102 branch CSE
dict set students 102 marks 90

dict set students 103 name Suresh
dict set students 103 age 23
dict set students 103 branch EEE
dict set students 103 marks 78
```

Display all students:

```tcl
dict for {id details} $students {

    puts "Student ID: $id"
    puts "Name: [dict get $details name]"
    puts "Age: [dict get $details age]"
    puts "Branch: [dict get $details branch]"
    puts "Marks: [dict get $details marks]"
    puts ""
}
```

Search for a student:

```tcl
set search_id 102

if {[dict exists $students $search_id]} {

    puts "Student found!"
    puts "Name: [dict get $students $search_id name]"

} else {

    puts "Student not found."
}
```

Update marks:

```tcl
dict set students 102 marks 95
```

Find the number of students:

```tcl
puts "Total Students: [dict size $students]"
```

---

# 🎯 EDA/VLSI Application

Dictionaries are useful for representing structured design information.

For example:

```tcl
set cell [dict create \
    name U101 \
    type NAND2 \
    area 12.5 \
    power 0.45 \
    delay 0.12]
```

Access individual properties:

```tcl
puts "Cell: [dict get $cell name]"
puts "Type: [dict get $cell type]"
puts "Area: [dict get $cell area]"
puts "Power: [dict get $cell power]"
puts "Delay: [dict get $cell delay]"
```

Output:

```text
Cell: U101
Type: NAND2
Area: 12.5
Power: 0.45
Delay: 0.12
```

This type of structured data handling becomes useful when writing automation scripts for design reports and EDA tools.

---

# 📌 Important Dictionary Commands

| Command | Purpose |
|---|---|
| `dict create` | Create a dictionary |
| `dict get` | Retrieve a value |
| `dict set` | Add or update a value |
| `dict exists` | Check whether a key exists |
| `dict keys` | Get all keys |
| `dict values` | Get all values |
| `dict size` | Get number of entries |
| `dict unset` | Remove an entry |
| `dict for` | Iterate through key-value pairs |

---

# 💡 Dictionary vs List

| Dictionary | List |
|---|---|
| Key-value structure | Ordered collection |
| Access data using keys | Access data using indexes |
| Good for structured records | Good for sequences of values |
| `dict get` | `lindex` |
| `dict set` | `lappend` |
| `dict keys` | `llength` |
| `dict for` | `foreach` |

Example dictionary:

```tcl
set employee [dict create name Ravi age 22]
```

Example list:

```tcl
set employees {Ravi Anil Suresh}
```

---

# ▶️ Run the Programs

Run each exercise using:

```bash
tclsh exercise01_creating_dictionaries.tcl
```

```bash
tclsh exercise02_dict_get.tcl
tclsh exercise03_dict_set.tcl
tclsh exercise04_dict_exists_size.tcl
tclsh exercise05_dict_keys_values.tcl
tclsh exercise06_dict_unset.tcl
tclsh exercise07_dict_iteration.tcl
tclsh exercise08_nested_dictionaries.tcl
```

Run the mini project:

```bash
tclsh mini_project_student_database.tcl
```

---

# 📊 Module Progress

| Exercise | Topic | Status |
|---|---|---|
| Exercise 1 | Creating Dictionaries | ✅ |
| Exercise 2 | `dict get` | ✅ |
| Exercise 3 | `dict set` | ✅ |
| Exercise 4 | `dict exists` & `dict size` | ✅ |
| Exercise 5 | `dict keys` & `dict values` | ✅ |
| Exercise 6 | `dict unset` | ✅ |
| Exercise 7 | `dict for` | ✅ |
| Exercise 8 | Nested Dictionaries | ✅ |
| Mini Project | Student Database | ✅ |

---


