# Module 4 – Loops in Tcl

## 📖 Overview

Loops are used to execute a block of Tcl code repeatedly.

Instead of writing the same code multiple times, loops allow us to automate repetitive tasks.

Loops are especially important in **EDA/VLSI automation**, where Tcl scripts often need to process:

- Multiple cells
- Multiple pins
- Multiple timing paths
- Multiple files
- Large sets of design objects
- Report data

---

# 🎯 Learning Objectives

After completing this module, you will be able to:

- Understand why loops are used
- Use `while` loops
- Use `for` loops
- Use `foreach` loops
- Use `break`
- Use `continue`
- Create nested loops
- Process multiple values automatically
- Build automation scripts using loops

---

# 📚 Topics Covered

1. `while` Loop
2. `for` Loop
3. `foreach` Loop
4. `break`
5. `continue`
6. Nested Loops
7. Loop Control
8. Mini Project – Loop-Based Automation

---

# 📂 Folder Structure

```text
04-Loops/
│
├── README.md
├── exercise01_while_loop.tcl
├── exercise02_for_loop.tcl
├── exercise03_foreach_loop.tcl
├── exercise04_break_and_continue.tcl
├── exercise05_nested_loops.tcl
└── mini_project.tcl
```

---

# 📝 Exercises

## Exercise 1 – `while` Loop

### Concepts

- `while` loop syntax
- Loop condition
- Counter variables
- Repeated execution

### Syntax

```tcl
while {condition} {

    # statements

}
```

### Example

```tcl
set i 1

while {$i <= 5} {

    puts $i

    incr i
}
```

Output:

```text
1
2
3
4
5
```

---

# Exercise 2 – `for` Loop

### Concepts

- Initialization
- Condition
- Increment/decrement
- Fixed number of iterations

### Syntax

```tcl
for {initialization} {condition} {increment} {

    # statements

}
```

### Example

```tcl
for {set i 1} {$i <= 5} {incr i} {

    puts $i
}
```

Output:

```text
1
2
3
4
5
```

---

# Exercise 3 – `foreach` Loop

### Concepts

- Iterating through a list
- Processing each element
- List-based automation

### Syntax

```tcl
foreach variable $list {

    # statements

}
```

### Example

```tcl
set cells {AND OR NAND NOR}

foreach cell $cells {

    puts $cell
}
```

Output:

```text
AND
OR
NAND
NOR
```

---

# Exercise 4 – `break` and `continue`

## `break`

`break` immediately terminates the loop.

Example:

```tcl
for {set i 1} {$i <= 10} {incr i} {

    if {$i == 5} {
        break
    }

    puts $i
}
```

Output:

```text
1
2
3
4
```

---

## `continue`

`continue` skips the current iteration and moves to the next iteration.

Example:

```tcl
for {set i 1} {$i <= 5} {incr i} {

    if {$i == 3} {
        continue
    }

    puts $i
}
```

Output:

```text
1
2
4
5
```

---

# Exercise 5 – Nested Loops

A nested loop is a loop inside another loop.

Example:

```tcl
for {set i 1} {$i <= 3} {incr i} {

    for {set j 1} {$j <= 3} {incr j} {

        puts "$i $j"
    }
}
```

Output:

```text
1 1
1 2
1 3
2 1
2 2
2 3
3 1
3 2
3 3
```

---

# 🚀 Mini Project

## Loop-Based Automation System

Build a Tcl program that processes a collection of values using loops.

The project should demonstrate:

- `while`
- `for`
- `foreach`
- Conditions
- `break`
- `continue`
- Counters
- Nested loops

The project should automatically process multiple records instead of handling each record individually.

---

# 📖 Loop Comparison

| Loop | Best Used For |
|------|---------------|
| `while` | Repeating while a condition is true |
| `for` | Fixed number of iterations |
| `foreach` | Processing every item in a list |
| `break` | Exiting a loop early |
| `continue` | Skipping the current iteration |
| Nested loops | Processing combinations or multi-dimensional data |

---

# 💡 `while` vs `for`

| `while` | `for` |
|---------|-------|
| Condition-based | Usually count-based |
| Initialization is separate | Initialization is inside loop |
| Increment is separate | Increment is inside loop |
| Useful when iteration count is unknown | Useful when iteration count is known |

---

# 💡 `for` vs `foreach`

### `for`

Useful when working with a counter:

```tcl
for {set i 0} {$i < 10} {incr i} {
    puts $i
}
```

### `foreach`

Useful when processing elements:

```tcl
foreach item $items {
    puts $item
}
```

---

# 🎯 Real EDA/VLSI Applications

Loops are fundamental to Tcl-based EDA automation.

They can be used to:

- Process multiple cells
- Process multiple pins
- Process timing paths
- Iterate through design objects
- Process report entries
- Generate repeated commands
- Check multiple constraints
- Automate repetitive design tasks

Example:

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

---

# 📌 Important Commands

| Command | Purpose |
|---------|---------|
| `while` | Condition-based loop |
| `for` | Counter-based loop |
| `foreach` | Iterate through a list |
| `break` | Exit the loop |
| `continue` | Skip current iteration |
| `incr` | Increment a variable |
| `set` | Create/update variables |
| `if` | Make decisions inside loops |

---

 

## 4. Confusing `break` and `continue`

| `break` | `continue` |
|---------|------------|
| Stops the loop | Skips current iteration |
| No more iterations | Loop continues |
| Exits immediately | Moves to next iteration |

---



# ▶️ Run the Programs

Run an exercise using:

```bash
tclsh exercise01_while_loop.tcl
```

Examples:

```bash
tclsh exercise02_for_loop.tcl
tclsh exercise03_foreach_loop.tcl
tclsh exercise04_break_and_continue.tcl
tclsh exercise05_nested_loops.tcl
tclsh mini_project.tcl
```

---

# 📊 Module Progress

| Exercise | Topic | Status |
|----------|-------|--------|
| Exercise 1 | `while` Loop | ✅ |
| Exercise 2 | `for` Loop | ✅ |
| Exercise 3 | `foreach` Loop | ✅ |
| Exercise 4 | `break` & `continue` | ✅ |
| Exercise 5 | Nested Loops | ✅ |
| Mini Project | Loop-Based Automation | ✅ |

---
