# Module 1 – Variables & Basic Commands in Tcl

## 📖 Overview

This module introduces the fundamentals of **Tcl programming**.

You will learn how to create and modify variables, display output, perform basic operations, and work with simple strings.

These concepts form the foundation for writing Tcl scripts used in **automation and EDA/VLSI environments**.

---

## 🎯 Learning Objectives

After completing this module, you will be able to:

* Write a basic Tcl program
* Use `puts` to display output
* Create variables using `set`
* Read variable values
* Reassign variables
* Increment variables
* Swap two variables
* Append text to strings
* Accept basic user input
* Build a simple Tcl mini project

---

# 📚 Topics Covered

1. Hello World
2. Variables
3. Variable Reassignment
4. Swapping Variables
5. Incrementing Variables
6. Appending to Strings
7. Basic User Input
8. Mini Project – Employee Management System

---

# 📂 Folder Structure

```text
01-variables-and-basic-commands/
│
├── README.md
├── 1.hello_world.tcl
├── 2.variables_question.tcl
├── 3.variable_reassignment.tcl
├── 4.swap_two_variables.tcl
├── 5.Increment_a_variable.tcl
├── 6.Append_to_string.tcl
└── mini_project_employee_system.tcl
```

---

# 📝 Exercises

## Exercise 1 – Hello World

The first Tcl program uses `puts` to display text.

```tcl
puts "Hello, World!"
```

Output:

```text
Hello, World!
```

### Key Command

```tcl
puts
```

`puts` is used to print information to the terminal.

---

# Exercise 2 – Variables

Variables are created using the `set` command.

```tcl
set name "Ravi"
set age 22
```

Display the values:

```tcl
puts $name
puts $age
```

Output:

```text
Ravi
22
```

### Important

Tcl variables are accessed using `$`.

```tcl
set name "Ravi"
puts $name
```

---

# Exercise 3 – Variable Reassignment

A variable can be assigned a new value.

```tcl
set age 20

puts "Age: $age"

set age 22

puts "Updated Age: $age"
```

Output:

```text
Age: 20
Updated Age: 22
```

The same variable can therefore hold a different value later in the program.

---

# Exercise 4 – Swapping Two Variables

Two variables can be swapped using a temporary variable.

```tcl
set a 10
set b 20

set temp $a
set a $b
set b $temp

puts "a = $a"
puts "b = $b"
```

Output:

```text
a = 20
b = 10
```

### Concept

Before:

```text
a → 10
b → 20
```

After:

```text
a → 20
b → 10
```

---

# Exercise 5 – Incrementing a Variable

The `incr` command is used to increment a numeric variable.

```tcl
set count 10

incr count

puts $count
```

Output:

```text
11
```

You can also increment by a specific amount:

```tcl
incr count 5
```

---

# Exercise 6 – Appending to a String

The `append` command adds text to an existing variable.

```tcl
set message "Hello"

append message " Tcl"

puts $message
```

Output:

```text
Hello Tcl
```

Another example:

```tcl
set name "Ravi"

append name " Kumar"

puts $name
```

Output:

```text
Ravi Kumar
```

---

# 💻 Basic User Input

Tcl can accept input from the user using:

```tcl
gets stdin
```

Example:

```tcl
puts -nonewline "Enter your name: "
flush stdout

gets stdin name

puts "Hello $name"
```

Example output:

```text
Enter your name: Ravi
Hello Ravi
```

---

# 🚀 Mini Project – Employee Management System

Create a simple Tcl program that stores and displays employee information.

The program should demonstrate:

* Variables
* `puts`
* User input
* Variable reassignment
* String manipulation

Example information:

```text
Employee Name
Employee ID
Age
Department
Salary
```

Example output:

```text
==============================
     EMPLOYEE INFORMATION
==============================

Name: Ravi
ID: 101
Age: 22
Department: VLSI
Salary: 50000
```

---

# 📌 Important Tcl Commands

| Command  | Purpose                     |
| -------- | --------------------------- |
| `set`    | Create or modify a variable |
| `puts`   | Display output              |
| `gets`   | Read input                  |
| `flush`  | Flush output buffer         |
| `incr`   | Increment a variable        |
| `append` | Append text to a variable   |

---

# 💡 Important Tcl Concepts

### Creating a variable

```tcl
set variable value
```

### Reading a variable

```tcl
$variable
```

### Printing a variable

```tcl
puts $variable
```

### Updating a variable

```tcl
set variable newValue
```

### Incrementing

```tcl
incr variable
```

### Appending

```tcl
append variable "text"
```

---

# 🎯 EDA/VLSI Connection

Variables are fundamental to Tcl-based EDA scripting.

For example:

```tcl
set cell_name "U101"
set cell_type "NAND2"
set area 12.5

puts "Cell: $cell_name"
puts "Type: $cell_type"
puts "Area: $area"
```

In real EDA automation, variables are commonly used to store:

* Cell names
* Pin names
* File paths
* Report names
* Tool options
* Numerical values
* Configuration parameters

Understanding variables is therefore essential before moving into more advanced Tcl automation.

---


# ▶️ Run the Programs

Use `tclsh` to execute the Tcl programs.

Example:

```bash
tclsh 1.hello_world.tcl
```

Other exercises:

```bash
tclsh 2.variables_question.tcl
tclsh 3.variable_reassignment.tcl
tclsh 4.swap_two_variables.tcl
tclsh 5.Increment_a_variable.tcl
tclsh 6.Append_to_string.tcl
tclsh mini_project_employee_system.tcl
```

---

# 📊 Module Progress

| Exercise     | Topic                      | Status |
| ------------ | -------------------------- | ------ |
| Exercise 1   | Hello World                | ✅      |
| Exercise 2   | Variables                  | ✅      |
| Exercise 3   | Variable Reassignment      | ✅      |
| Exercise 4   | Swapping Variables         | ✅      |
| Exercise 5   | Incrementing Variables     | ✅      |
| Exercise 6   | Appending Strings          | ✅      |
| Mini Project | Employee Management System | ✅      |

---

