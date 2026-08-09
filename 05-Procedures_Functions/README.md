# Module 5 – Procedures & Functions in Tcl

## 📖 Overview

Procedures are one of the most important concepts in Tcl programming.

A procedure allows us to group a set of commands into a **reusable block of code**.

Instead of writing the same logic multiple times, we can create a procedure once and call it whenever required.

Procedures are extremely useful in **EDA/VLSI automation**, where the same operations are often performed repeatedly on different:

- Cells
- Pins
- Nets
- Timing paths
- Reports
- Design objects

---

# 🎯 Learning Objectives

After completing this module, you will be able to:

- Create Tcl procedures
- Pass arguments to procedures
- Return values from procedures
- Use local variables
- Use global variables
- Define default arguments
- Create reusable Tcl code
- Organize automation scripts using procedures

---

# 📚 Topics Covered

1. Introduction to Procedures
2. Creating a Procedure
3. Procedure Arguments
4. Return Values
5. Procedures for Calculations
6. Local Variables
7. Global Variables
8. Default Arguments
9. Reusable Procedures
10. Mini Project – Procedure-Based Automation

---

# 📂 Folder Structure

```text
05-Procedures_Functions/
│
├── README.md
├── exercise01_rectangle_area.tcl
├── exercise02_creating_a_procedure.tcl
├── exercise03_procedure_with_arguements.tcl
├── exercise04_return_values.tcl
├── exercise05_square_of_a_number.tcl
├── exercise06_local_variable.tcl
├── exercise07_global_variables.tcl
├── exercise08_default_argument.tcl
└── mini_project.tcl
```

---

# 📝 Exercises

## Exercise 1 – Rectangle Area Procedure

### Concepts

- Creating a procedure
- Passing values
- Performing calculations

Example:

```tcl
proc rectangle_area {length width} {

    return [expr {$length * $width}]
}
```

Calling the procedure:

```tcl
set area [rectangle_area 10 5]

puts "Area = $area"
```

Output:

```text
Area = 50
```

---

# Exercise 2 – Creating a Procedure

### Concepts

- `proc`
- Procedure name
- Procedure body
- Calling procedures

### Syntax

```tcl
proc procedureName {arguments} {

    # procedure body

}
```

Example:

```tcl
proc greet {} {

    puts "Hello from Tcl!"
}

greet
```

Output:

```text
Hello from Tcl!
```

---

# Exercise 3 – Procedure Arguments

Arguments allow information to be passed into a procedure.

Example:

```tcl
proc add {a b} {

    return [expr {$a + $b}]
}

puts [add 10 20]
```

Output:

```text
30
```

---

# Exercise 4 – Return Values

A procedure can return a result using:

```tcl
return
```

Example:

```tcl
proc square {number} {

    return [expr {$number * $number}]
}

set result [square 5]

puts "Result = $result"
```

Output:

```text
Result = 25
```

---

# Exercise 5 – Square of a Number

Create a reusable procedure that calculates the square of a number.

Example:

```tcl
proc square {number} {

    return [expr {$number * $number}]
}
```

Calling:

```tcl
puts [square 7]
```

Output:

```text
49
```

---

# Exercise 6 – Local Variables

Variables created inside a procedure are normally **local to that procedure**.

Example:

```tcl
proc calculate {} {

    set value 100

    puts "Value = $value"
}

calculate
```

The variable `value` belongs to the procedure's local scope.

---

# Exercise 7 – Global Variables

A procedure can access a global variable using:

```tcl
global variableName
```

Example:

```tcl
set count 10

proc show_count {} {

    global count

    puts "Count = $count"
}

show_count
```

Output:

```text
Count = 10
```

---

# Exercise 8 – Default Arguments

A procedure can provide a default value for an argument.

Example:

```tcl
proc greet {{name "User"}} {

    puts "Hello $name"
}
```

Calling without an argument:

```tcl
greet
```

Output:

```text
Hello User
```

Calling with an argument:

```tcl
greet Rahul
```

Output:

```text
Hello Rahul
```

---

# 🚀 Mini Project

## Procedure-Based Automation System

Build a Tcl program that uses multiple procedures to perform different operations.

The project should demonstrate:

- Creating procedures
- Passing arguments
- Returning values
- Local variables
- Global variables
- Default arguments
- Calling procedures multiple times

The objective is to create **reusable code instead of repeating the same commands**.

---

# 📖 Important Commands

| Command | Purpose |
|---------|---------|
| `proc` | Create a procedure |
| `return` | Return a value |
| `global` | Access a global variable |
| `set` | Create or modify variables |
| `expr` | Perform calculations |

---

# 💡 Why Use Procedures?

Without procedures:

```tcl
set result1 [expr {10 * 10}]
set result2 [expr {20 * 20}]
set result3 [expr {30 * 30}]
```

With a procedure:

```tcl
proc square {number} {

    return [expr {$number * $number}]
}

set result1 [square 10]
set result2 [square 20]
set result3 [square 30]
```

The second approach is:

- Easier to maintain
- Reusable
- Easier to test
- Less repetitive
- Better organized

---

# 💡 Local vs Global Variables

| Local Variable | Global Variable |
|----------------|-----------------|
| Exists within procedure scope | Exists outside procedures |
| Normally created inside a procedure | Created at global scope |
| Not directly accessible outside | Can be accessed using `global` |
| Safer for reusable procedures | Useful when shared state is required |

---

# 🎯 Real EDA/VLSI Applications

Procedures are heavily used in Tcl-based EDA automation.

For example, instead of repeatedly writing commands to process cells, you can create a reusable procedure:

```tcl
proc process_cell {cellName} {

    puts "Processing cell: $cellName"
}

process_cell U1
process_cell U2
process_cell U3
```

Output:

```text
Processing cell: U1
Processing cell: U2
Processing cell: U3
```

In real EDA environments, procedures can be used to create reusable operations for:

- Timing analysis
- Cell processing
- Pin analysis
- Report generation
- Constraint checking
- Design object processing
- Automation flows

---

# 📌 Procedure Syntax

Basic procedure:

```tcl
proc name {} {

    # commands
}
```

Procedure with arguments:

```tcl
proc name {arg1 arg2} {

    # commands
}
```

Procedure returning a value:

```tcl
proc name {arg1 arg2} {

    return [expr {$arg1 + $arg2}]
}
```

Procedure with a default argument:

```tcl
proc name {{arg1 10}} {

    puts $arg1
}
```

---



# ▶️ Run the Programs

Run an exercise using:

```bash
tclsh exercise01_rectangle_area.tcl
```

Examples:

```bash
tclsh exercise02_creating_a_procedure.tcl
tclsh exercise03_procedure_with_arguements.tcl
tclsh exercise04_return_values.tcl
tclsh exercise05_square_of_a_number.tcl
tclsh exercise06_local_variable.tcl
tclsh exercise07_global_variables.tcl
tclsh exercise08_default_argument.tcl
tclsh mini_project.tcl
```

---

# 📊 Module Progress

| Exercise | Topic | Status |
|----------|-------|--------|
| Exercise 1 | Rectangle Area Procedure | ✅ |
| Exercise 2 | Creating a Procedure | ✅ |
| Exercise 3 | Procedure Arguments | ✅ |
| Exercise 4 | Return Values | ✅ |
| Exercise 5 | Square of a Number | ✅ |
| Exercise 6 | Local Variables | ✅ |
| Exercise 7 | Global Variables | ✅ |
| Exercise 8 | Default Arguments | ✅ |
| Mini Project | Procedure-Based Automation | ✅ |

---