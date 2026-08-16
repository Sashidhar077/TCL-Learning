# Module 19 — Advanced File Processing in Tcl

## 🎯 Module Objective

In this module, you will learn how to use Tcl to:

* Process multiple files
* Search for patterns in files
* Count information from log files
* Parse simple CSV files
* Generate file reports
* Analyze logs and determine PASS/FAIL status

These skills are especially useful for **EDA/VLSI log and report analysis**. 

---

## 📚 Module Structure

| Exercise     | Topic                  | File                               |
| ------------ | ---------------------- | ---------------------------------- |
| 1            | Process Multiple Files | `exercise01_multiple_files.tcl`    |
| 2            | Log Analysis           | `exercise02_log_analysis.tcl`      |
| 3            | CSV Processing         | `exercise03_csv_processing.tcl`    |
| 4            | File Summary Report    | `exercise04_report_generation.tcl` |
| Mini Project | Log Analyzer           | `mini_project_log_analyzer.tcl`    |



---

# Exercise 1 — Process Multiple Files

### Objective

Create a Tcl program that accepts multiple filenames from the command line and prints the number of lines in each file.

### Example

```bash
tclsh exercise01_multiple_files.tcl file1.txt file2.txt
```

### Expected Output

```text
file1.txt : 10 lines
file2.txt : 25 lines
```

### Concepts Learned

* `$argc`
* `$argv`
* `foreach`
* `file exists`
* `open`
* `gets`
* `while`
* `incr`
* `close`
* `continue`

The key concept is:

```tcl
foreach filename $argv
```

which allows the script to process every filename supplied through the command line. 

### Test

```bash
tclsh exercise01_multiple_files.tcl file1.txt file2.txt
```




---

# Exercise 2 — Log Analysis

### Objective

Create a Tcl program that reads a log file and counts:

* `INFO`
* `WARNING`
* `ERROR`

### Sample `flow.log`

```text
INFO: Starting synthesis
INFO: Reading design
WARNING: Missing constraint
ERROR: Library not found
INFO: Synthesis completed
ERROR: Timing analysis failed
```

### Expected Output

```text
INFO messages    : 3
WARNING messages : 1
ERROR messages   : 2
```

### Main Concept

```tcl
string match
```

Example:

```tcl
string match "ERROR:*" $line
```

This checks whether a line begins with `ERROR:`. 

### Important Code Pattern

```tcl
if {[string match "INFO:*" $line]} {
    incr info_count
}

if {[string match "WARNING:*" $line]} {
    incr warning_count
}

if {[string match "ERROR:*" $line]} {
    incr error_count
}
```

### Test

```bash
tclsh exercise02_log_analysis.tcl flow.log
```




---

# Exercise 3 — CSV Processing

### Objective

Read a CSV file and extract individual fields.

### Sample `students.csv`

```text
name,marks
Ravi,85
Anil,90
Suresh,78
```

### Expected Output

```text
Student: Ravi  Marks: 85
Student: Anil  Marks: 90
Student: Suresh  Marks: 78
```

### Concepts Learned

#### `split`

```tcl
set fields [split $line ","]
```

For:

```text
Ravi,85
```

this produces two fields:

```text
Ravi
85
```

#### `lindex`

```tcl
set name [lindex $fields 0]
set marks [lindex $fields 1]
```

`lindex` is used to access individual fields from the list. 

### Test

```bash
tclsh exercise03_csv_processing.tcl students.csv
```


---

# Exercise 4 — Generate a File Summary

### Objective

Create a Tcl program that reads a text file and reports:

* Filename
* Number of lines
* Number of words
* Number of characters

### Sample `student.txt`

```text
This is Tcl
Tcl is useful
```

### Summary Format

```text
=================================
       FILE SUMMARY
=================================
File       : student.txt
Lines      : 2
Words      : 5
Characters : 25
=================================
```

### Concepts Learned

This exercise combines:

```tcl
gets
string length
split
foreach
incr
```

The program counts lines, words, and characters while reading the file line by line. 

### Important Code

```tcl
while {[gets $fp line] >= 0} {

    incr line_count

    foreach word [split $line] {
        if {$word ne ""} {
            incr word_count
        }
    }

    incr char_count [string length $line]
}
```

### Test

```bash
tclsh exercise04_report_generation.tcl student.txt
```




---

# 🚀 Mini Project — Log Analyzer

The mini project combines the concepts learned in all four exercises. 

## Objective

Create a Tcl program that accepts a log file and generates:

* Filename
* Total number of lines
* INFO count
* WARNING count
* ERROR count
* Final status

The status should be:

```text
ERROR > 0  → FAILED
ERROR = 0  → PASSED
```



---

## Sample Input

### `flow.log`

```text
INFO: Starting flow
INFO: Reading design
WARNING: Missing constraint
INFO: Running synthesis
ERROR: Library not found
INFO: Flow completed
```



---

## Expected Output

```text
========================================
          LOG ANALYSIS REPORT
========================================
File       : flow.log
Total Lines: 6

INFO       : 4
WARNING    : 1
ERROR      : 1

Status     : FAILED
========================================
```



---

## Main Logic

```text
                Log File
                   ↓
              Read each line
                   ↓
        ┌──────────┼──────────┐
        ↓          ↓          ↓
      INFO      WARNING      ERROR
        ↓          ↓          ↓
      Count      Count       Count
        └──────────┼──────────┘
                   ↓
            Check ERROR count
                   ↓
             ┌─────┴─────┐
             ↓           ↓
          ERROR > 0    ERROR = 0
             ↓           ↓
          FAILED       PASSED
```

The project uses `string match` to identify message types and counters to generate the final result. 

---

## Test the Mini Project

```bash
tclsh mini_project_log_analyzer.tcl flow.log
``



---

# 🔥 EDA/VLSI Connection

This type of processing is directly useful in EDA automation.

EDA tools generate logs containing:

```text
INFO
WARNING
ERROR
```

A Tcl script can automatically:

```text
Tool Run
   ↓
Log File
   ↓
Tcl Analyzer
   ↓
Count Errors/Warnings
   ↓
Determine PASS/FAIL
   ↓
Generate Summary
```

The same idea can later be extended to analyze:

* Timing reports
* Power reports
* Area reports
* Synthesis reports



---

# 📂 Final Folder Structure

```text
19-Advanced-File-Processing/
│
├── README.md
│
├── exercise01_multiple_files.tcl
├── exercise02_log_analysis.tcl
├── exercise03_csv_processing.tcl
├── exercise04_report_generation.tcl
│
└── mini_project_log_analyzer.tcl
```



---

# 📄 Sample/Input Files

The module uses these test files:

```text
flow.log
students.csv
student.txt
```

They are used for testing the log-analysis, CSV-processing, and file-summary exercises.

---

# 📊 Module 19 Progress

| Component    | Topic                    | Status |
| ------------ | ------------------------ | ------ |
| Exercise 1   | Multiple File Processing | ✅      |
| Exercise 2   | Log Analysis             | ✅      |
| Exercise 3   | CSV Processing           | ✅      |
| Exercise 4   | File Summary Report      | ✅      |
| Mini Project | Log Analyzer             | ✅      |

**Module 19 = 4 exercises + 1 mini project.** 

---