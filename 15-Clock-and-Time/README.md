# Module 15 – Clock & Time in Tcl

## 📖 Overview

Tcl's `clock` command is the standard way to work with dates, times, timestamps, and time-based calculations.

Time handling shows up constantly in real scripts:

- Logging and audit trails
- Report generation
- Measuring script/tool execution time
- Tracking automation flows
- Creating unique timestamps for filenames
- EDA/VLSI flow performance analysis (synthesis, STA, PnR runtimes, etc.)

Full working code for each topic lives in its own `.tcl` file — this README explains the *what/why* and shows just the key line(s). Run the files to see the complete implementation.

---

## 🎯 Learning Objectives

By the end of this module you will be able to:

- Get the current Unix timestamp with `clock seconds`
- Convert timestamps into human-readable dates with `clock format`
- Build custom date/time formats using format specifiers
- Convert date strings back into timestamps with `clock scan`
- Calculate the difference between two points in time
- Measure how long a block of code takes to run
- Add timestamps to log messages safely
- Generate simple date/time reports
- Put it all together in an execution-time logger

---

## 📂 Folder Structure

```text
15-Clock-and-Time/
│
├── README.md
│
├── exercise01_clock_seconds.tcl
├── exercise02_clock_format.tcl
├── exercise03_custom_time_format.tcl
├── exercise04_clock_scan.tcl
├── exercise05_time_difference.tcl
├── exercise06_execution_time.tcl
├── exercise07_log_timestamp.tcl
├── exercise08_time_report.tcl
│
└── mini_project_execution_time_logger.tcl
```

---

## Exercise 1 – `clock seconds`
📄 `exercise01_clock_seconds.tcl`

Returns the current Unix timestamp — seconds elapsed since **January 1, 1970 UTC** (the "epoch").

```tcl
set current_time [clock seconds]
```

**Output:**

```text
Current Unix timestamp: 1786610000
```

Timestamps are just numbers, which makes them easy to compare, subtract, sort, and use for logging or unique file naming.

---

## Exercise 2 – `clock format`
📄 `exercise02_clock_format.tcl`

Converts a Unix timestamp into a readable date/time string.

```tcl
set readable_time [clock format $current_time]
```

**Output:**

```text
Current Date and Time: Thu Aug 13 09:10:25 IST 2026
```

*(depends on the system's clock and timezone)*

---

## Exercise 3 – Custom Date & Time Formatting
📄 `exercise03_custom_time_format.tcl`

The `-format` option gives full control over layout.

```tcl
set date [clock format $current_time -format "%d-%m-%Y"]
```

**Output:**

```text
Date: 13-08-2026
Time: 09:15:30
```

### Common Format Specifiers

| Format | Meaning              | Example    |
|--------|----------------------|------------|
| `%d`   | Day of month         | `13`       |
| `%m`   | Month (numeric)      | `08`       |
| `%Y`   | Four-digit year      | `2026`     |
| `%H`   | Hour (24-hour)       | `09`       |
| `%M`   | Minutes              | `15`       |
| `%S`   | Seconds              | `30`       |
| `%A`   | Full weekday name    | `Thursday` |
| `%B`   | Full month name      | `August`   |

---

## Exercise 4 – `clock scan`
📄 `exercise04_clock_scan.tcl`

Does the reverse of `clock format` — turns a readable date/time string into a Unix timestamp.

```tcl
set timestamp [clock scan "13 August 2026 10:00:00"]
```

### Time Conversion Flow

```text
Human-readable date  →  clock scan   →  Unix timestamp
Unix timestamp        →  clock format →  Human-readable date
```

---

## Exercise 5 – Calculating Time Differences
📄 `exercise05_time_difference.tcl`

Timestamps are just seconds, so subtracting one from another gives elapsed time.

```tcl
set elapsed_time [expr {$end_time - $start_time}]
```

**Output:**

```text
Elapsed Time: 330 seconds
```

---

## Exercise 6 – Measuring Execution Time
📄 `exercise06_execution_time.tcl`

Record a timestamp before and after a block of work to see how long it took.

```tcl
set start_time [clock seconds]
# ... do work ...
set elapsed [expr {[clock seconds] - $start_time}]
```

## Exercise 8 – Date/Time Report
📄 `exercise08_time_report.tcl`

Combines formatting and timestamps into a simple readable report block using `clock format` twice (date + time) and plain `puts` statements for the layout.

**Output:**

```text
=================================
       TCL TIME REPORT
=================================
Date      : 13-08-2026
Time      : 11:20:30
Timestamp : 1786610000

Report generated successfully.
=================================
```

---

## 🚀 Mini Project – Execution Time Logger
📄 `mini_project_execution_time_logger.tcl`

### Objective

A script that:

1. Records the start time and prints it
2. Performs a simple operation (a loop summing 1 to 1,000,000)
3. Records the end time
4. Calculates execution time
5. Prints a formatted execution report

**Output:**

```text
Script started at: 13-08-2026 11:30:10

=================================
      EXECUTION TIME REPORT
=================================
Start Time : 13-08-2026 11:30:10
End Time   : 13-08-2026 11:30:10
Execution  : 0 seconds
=================================
```

> Execution time can legitimately show `0` if the work finishes within the same second — use `clock milliseconds` for sub-second accuracy.

---

## 🎯 EDA/VLSI Application

Time operations are essential in EDA automation for tracking the runtime of each stage of a flow.

```text
========================================
EDA FLOW RUNTIME REPORT
========================================
Synthesis Runtime : 125 seconds
STA Runtime       : 48 seconds
Report Runtime    : 12 seconds
Total Runtime     : 185 seconds
========================================
```

Typical pattern: `Start Synthesis → Run Synthesis → End Synthesis → Calculate Runtime`

Applies equally to timing analysis, power analysis, report/file processing, batch automation, and regression flows.

---

## 📌 Quick Reference

| Command | Purpose |
|---------|---------|
| `clock seconds` | Get current Unix timestamp |
| `clock format` | Convert timestamp → readable date/time |
| `clock scan` | Convert date/time string → timestamp |
| `clock milliseconds` | Get time with millisecond precision |
| `clock microseconds` | Get time with microsecond precision |

```tcl
set timestamp [clock seconds]                          ;# current time
clock format $timestamp                                ;# timestamp → date
clock format $timestamp -format "%d-%m-%Y"              ;# custom date
clock format $timestamp -format "%H:%M:%S"              ;# custom time
clock scan "13 August 2026 10:00:00"                     ;# date → timestamp
expr {$end_time - $start_time}                          ;# elapsed time
```

---

## ▶️ Running the Programs

```bash
cd ~/Projects/tcl_learning/15-Clock-and-Time

tclsh exercise01_clock_seconds.tcl
tclsh exercise02_clock_format.tcl
tclsh exercise03_custom_time_format.tcl
tclsh exercise04_clock_scan.tcl
tclsh exercise05_time_difference.tcl
tclsh exercise06_execution_time.tcl
tclsh exercise07_log_timestamp.tcl
tclsh exercise08_time_report.tcl
tclsh mini_project_execution_time_logger.tcl
```

---

## 📊 Module Progress

| Exercise     | Topic                    | Status |
|--------------|---------------------------|:------:|
| Exercise 1   | `clock seconds`          | ✅ |
| Exercise 2   | `clock format`           | ✅ |
| Exercise 3   | Custom date/time format  | ✅ |
| Exercise 4   | `clock scan`             | ✅ |
| Exercise 5   | Time difference          | ✅ |
| Exercise 6   | Execution time           | ✅ |
| Exercise 7   | Timestamped logs         | ✅ |
| Exercise 8   | Date/time report         | ✅ |
| Mini Project | Execution Time Logger    | ✅ |

---

