# Module 9 – File Handling in Tcl

## 📖 Overview

File handling is one of the most important features of Tcl. It enables scripts to create, read, modify, and analyze files, making it essential for **EDA/VLSI automation**.

In real-world hardware design flows, Tcl scripts frequently work with:

- Timing Reports (`timing.rpt`)
- Power Reports (`power.rpt`)
- Area Reports (`area.rpt`)
- Log Files (`run.log`)
- Constraint Files (`.sdc`)
- Configuration Files (`.cfg`)
- CSV Reports

This module teaches the complete lifecycle of working with files—from opening and writing files to parsing reports and handling errors.

---

# 📚 Topics Covered

1. Opening & Closing Files
2. Writing Files
3. Reading Files using `gets`
4. Reading Entire Files using `read`
5. End-of-File Detection (`eof`)
6. Appending to Files
7. Processing Files Line-by-Line
8. Error Handling using `catch`
9. Mini Project – Student Report File Manager

---

# 📂 Folder Structure

```
09-File-Handling/
│
├── README.md
├── exercise01_open_close.tcl
├── exercise02_write_file.tcl
├── exercise03_read_file.tcl
├── exercise04_read_entire_file.tcl
├── exercise05_eof.tcl
├── exercise06_append_file.tcl
├── exercise07_process_file.tcl
├── exercise08_catch.tcl
└── mini_project_student_report_manager.tcl
```

---

# 📝 Exercises

---

## Exercise 1 – Opening & Closing Files

### Concepts

- Opening files
- File handles
- Closing files

### Commands Learned

```tcl
open filename mode

close $fileHandle
```

### File Modes

| Mode | Description |
|------|-------------|
| r | Read |
| w | Write (overwrite) |
| a | Append |
| r+ | Read & Write |
| w+ | Read & Write (overwrite) |
| a+ | Read & Append |

---

## Exercise 2 – Writing Files

### Concepts

- Creating files
- Writing reports
- Writing multiple lines

### Commands Learned

```tcl
puts $fileHandle "Text"
```

---

## Exercise 3 – Reading Files (`gets`)

### Concepts

- Reading line by line
- Reading sequentially

### Commands Learned

```tcl
gets $fileHandle variable
```

---

## Exercise 4 – Reading Entire Files (`read`)

### Concepts

- Read complete file
- Store file contents into one variable

### Commands Learned

```tcl
set data [read $fileHandle]
```

---

## Exercise 5 – End-of-File Detection (`eof`)

### Concepts

- Reading unknown-length files
- Loop until end of file

### Commands Learned

```tcl
while {[gets $fileHandle line] != -1} {

}
```

Also learned

```tcl
eof $fileHandle
```

---

## Exercise 6 – Appending to Files

### Concepts

- Preserve existing data
- Add new information

### Commands Learned

```tcl
open filename a
```

---

## Exercise 7 – Processing Files Line-by-Line

### Concepts

- Parse reports
- Count records
- Filter information
- Generate summaries

### Commands Learned

```tcl
while {[gets $fileHandle line] != -1} {

    if {[string match "*FAIL*" $line]} {

    }

}
```

---

## Exercise 8 – Error Handling (`catch`)

### Concepts

- Prevent program crashes
- Handle missing files
- Display meaningful error messages

### Commands Learned

```tcl
catch {command} result

if {[catch {open "file.txt" r} fp]} {

}
```

---

# 🚀 Mini Project

## Student Report File Manager

### Features

- Create student report
- Write report to file
- Append additional information
- Read file line by line
- Read entire file
- Create backup file
- Handle file errors safely

---

# 📖 Commands Learned

| Command | Purpose |
|----------|----------|
| `open` | Open a file |
| `close` | Close a file |
| `puts` | Write to console or file |
| `gets` | Read one line |
| `read` | Read entire file |
| `eof` | Detect end of file |
| `catch` | Handle runtime errors |
| `while` | Process files line by line |
| `string match` | Search text patterns |
| `split` | Split strings into lists |
| `lindex` | Access list elements |

---

# 📌 File Opening Modes

| Mode | Purpose |
|------|---------|
| `r` | Read existing file |
| `w` | Create or overwrite file |
| `a` | Append data |
| `r+` | Read & Write |
| `w+` | Read/Write (overwrite) |
| `a+` | Read/Append |

---

# 💡 `gets` vs `read`

| `gets` | `read` |
|---------|---------|
| Reads one line | Reads entire file |
| Best for large reports | Best for small files |
| Used in loops | Used once |
| Memory efficient | Loads whole file into memory |

---

# 💡 Write Mode vs Append Mode

| Write (`w`) | Append (`a`) |
|--------------|--------------|
| Deletes old content | Keeps old content |
| Creates fresh report | Adds to existing report |
| Used for new reports | Used for log files |

---

# 💡 Common File Processing Pattern

```tcl
set fp [open "report.txt" r]

while {[gets $fp line] != -1} {

    puts $line

}

close $fp
```

This is the standard way to process reports in Tcl.

---

# 🎯 Real EDA Applications

File handling is widely used for:

- Reading Timing Reports
- Reading Power Reports
- Reading Area Reports
- Parsing DRC Reports
- Parsing LVS Reports
- Reading Constraint Files
- Reading Log Files
- Writing Summary Reports
- Generating Automation Logs
- Creating Configuration Files

Example

```tcl
set report [open "timing.rpt" r]

while {[gets $report line] != -1} {

    puts $line

}

close $report
```

---

# 📌 Best Practices

- Always close files after use.
- Use descriptive file handle names.
- Use `"w"` only when overwriting is intended.
- Use `"a"` for log files and incremental reports.
- Use `gets` for large reports.
- Use `read` for small configuration files.
- Use `catch` when opening files.
- Always check for file errors.
- Process reports line by line using `while`.

---


---

# 🎓 Skills Acquired

After completing this module, you can:

- ✅ Open and close files
- ✅ Create text reports
- ✅ Read files line by line
- ✅ Read entire files
- ✅ Detect end of file
- ✅ Append data without overwriting
- ✅ Parse report files
- ✅ Generate summary reports
- ✅ Handle file-related errors
- ✅ Build file-processing automation scripts

---

# ▶️ Run the Programs

Run any exercise using:

```bash
tclsh exercise01_open_close.tcl
```

Examples

```bash
tclsh exercise03_read_file.tcl

tclsh exercise07_process_file.tcl

tclsh mini_project_student_report_manager.tcl
```

---
