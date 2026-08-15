# Module 18 — TCL System Commands

This module introduces **TCL system commands**, focusing on how TCL scripts interact with the operating system. These concepts are especially useful for **VLSI/EDA automation**, where TCL scripts are frequently used to execute tools, process outputs, and handle command failures.

---

## 📚 Topics Covered

1. Basic `exec`
2. Capturing command output
3. Passing command arguments
4. `exec` error handling
5. Mini Project — System Command Runner

---

## 📁 Module Structure

```text
Module_18_System_Commands/
│
├── exercise1_basic_exec.tcl
├── exercise2_capture_output.tcl
├── exercise3_command_arguments.tcl
├── exercise4_exec_error_handling.tcl
│
├── system_command_runner.tcl
│
└── README.md
```

---

# 1. Basic `exec`

### Objective

Learn how to execute operating-system commands from TCL.

### Example

```tcl
puts "Current Directory:"
puts [exec pwd]

puts "Username:"
puts [exec whoami]
```

### Example Output

```text
Current Directory:
/home/user/tcl

Username:
user
```

### Key Concept

```tcl
[exec pwd]
```

The `exec` command executes the system command, while `[]` performs **command substitution** and returns the command's output.

---

# 2. Capture Command Output

### Objective

Learn how to store the output of a system command in a TCL variable.

### Example

```tcl
set current_time [exec date]

puts "Current System Time:"
puts $current_time
```

### Example Output

```text
Current System Time:
Sat Aug 15 09:30:00 IST 2026
```

### Key Concept

```tcl
set variable [exec command]
```

The output of the system command is stored inside the TCL variable.

---

# 3. Command Arguments

### Objective

Learn how to pass arguments to system commands.

### Example

```tcl
set directory "/tmp"

puts "Contents of $directory:"
puts [exec ls -l $directory]
```

This is equivalent to running the Linux command:

```bash
ls -l /tmp
```

### Key Concept

Arguments can be passed to `exec` as additional TCL words:

```tcl
exec command argument1 argument2
```

---

# 4. `exec` Error Handling

System commands can fail. TCL provides the `catch` command to handle errors without terminating the entire script.

### Example

```tcl
set result ""

if {[catch {exec ls /wrong_directory} result]} {

    puts "Command Failed"
    puts "Error: $result"

} else {

    puts "Command Successful"
    puts $result
}
```

### Example Output

```text
Command Failed
Error: ...
```

### Successful Command

```tcl
set result ""

if {[catch {exec pwd} result]} {

    puts "Command Failed"
    puts $result

} else {

    puts "Command Successful"
    puts $result
}
```

### Key Concept

```tcl
catch {command} result
```

`catch` returns:

```text
0 → command successful
non-zero → command failed
```

The variable `result` contains the command output or error information.

---

# 5. Mini Project — System Command Runner

## Objective

Create an interactive TCL program that:

* Accepts a system command from the user
* Executes the command
* Captures its output
* Displays the output
* Handles command execution errors

### Example

```text
=========================================
        TCL SYSTEM COMMAND RUNNER
=========================================

Enter system command: pwd

Command executed successfully!
Output:
/home/user/tcl
```

### Invalid Command

```text
Enter system command: abcxyz

Command execution failed!
Error:
...
```

---

## Complete Mini Project

```tcl
#=========================================
# TCL System Command Runner
#=========================================

puts "========================================="
puts "        TCL SYSTEM COMMAND RUNNER"
puts "========================================="

puts -nonewline "Enter system command: "
flush stdout

gets stdin command

puts ""

set output ""

if {[catch {exec $command} output]} {

    puts "Command execution failed!"
    puts "Error:"
    puts $output

} else {

    puts "Command executed successfully!"
    puts "Output:"
    puts $output
}
```

---

# 🧠 Important TCL Concepts Learned

| Concept     | Example                   | Purpose                             |
| ----------- | ------------------------- | ----------------------------------- |
| `exec`      | `exec pwd`                | Execute system command              |
| `[]`        | `[exec pwd]`              | Capture/substitute command result   |
| `set`       | `set output ...`          | Store command output                |
| `$variable` | `$output`                 | Access variable value               |
| `catch`     | `catch {exec pwd} result` | Handle errors                       |
| `flush`     | `flush stdout`            | Immediately display buffered output |
| `gets`      | `gets stdin command`      | Read user input                     |

---

# 🔄 Execution Flow

```text
              TCL SCRIPT
                  |
                  v
            Get User Input
                  |
                  v
             System Command
                  |
                  v
                exec
                  |
          +-------+-------+
          |               |
       Success          Failure
          |               |
          v               v
     Capture Output      catch
          |               |
          v               v
      Display Output   Display Error
```

---

# 🛠️ Commands Practiced

The following Linux commands can be used while practicing this module:

```bash
pwd
whoami
date
ls
ls -l
ls /tmp
```

For testing error handling:

```bash
ls /wrong_directory
```

or an invalid command such as:

```bash
abcxyz
```

---

# 🧪 Exercises

### Exercise 1 — Basic `exec`

Execute:

```text
pwd
whoami
```

using TCL.

---

### Exercise 2 — Capture Output

Execute:

```text
date
```

and store the output in a TCL variable.

---

### Exercise 3 — Command Arguments

Use a variable containing `/tmp` and execute:

```text
ls -l /tmp
```

---

### Exercise 4 — Error Handling

Use `catch` to handle:

```text
ls /wrong_directory
```

---

### Mini Project

Build the interactive:

```text
TCL SYSTEM COMMAND RUNNER
```

that accepts and executes a user-provided system command.

---
