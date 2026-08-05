# Module 10 – Regular Expressions (Regex) in Tcl

## 📖 Overview

Regular Expressions (Regex) are one of the most powerful features of Tcl. They allow you to **search**, **match**, **extract**, and **replace** text using patterns instead of exact strings.

Regex is extensively used in **EDA/VLSI automation** to parse :___

- Timing Reports
- Power Reports
- Area Reports
- DRC Reports
- LVS Reports
- Synthesis Logs
- STA Reports
- Configuration Files

Instead of manually splitting strings, Regex lets you directly extract the information you need.

---

# 🎯 Learning Objectives

After completing this module, you will be able to:

- Search text using `regexp`
- Extract values using Capturing Groups
- Use Special Regex Characters
- Work with Character Classes
- Replace text using `regsub`
- Parse Timing Reports
- Parse Log Files
- Build a complete EDA Report Parser

---

# 📚 Topics Covered

1. Introduction to Regular Expressions
2. `regexp` Basics
3. Special Characters
4. Character Classes
5. Capturing Groups
6. `regsub` (Search & Replace)
7. Parsing Timing Reports
8. Parsing Log Files
9. Mini Project – EDA Timing Report Parser

---

# 📂 Folder Structure

```text
10-Regular-Expressions/
│
├── README.md
├── exercise01_intro_regex.tcl
├── exercise02_regexp_basics.tcl
├── exercise03_special_characters.tcl
├── exercise04_character_classes.tcl
├── exercise05_capturing_groups.tcl
├── exercise06_regsub.tcl
├── exercise07_timing_report_parser.tcl
├── exercise08_log_parser.tcl
├── mini_project_eda_report_parser.tcl
├── timing.rpt
├── flow.log
└── summary.rpt
```

---

# 📝 Exercises

---

## Exercise 1 – Introduction to Regular Expressions

### Concepts

- What is Regex?
- Why Regex?
- `regexp`
- Match vs No Match

### Commands Learned

```tcl
regexp pattern string
```

---

## Exercise 2 – `regexp` Basics

### Concepts

- Search text
- Capture matched text
- Return values

### Commands Learned

```tcl
regexp {FAIL} $line match
```

---

## Exercise 3 – Special Characters

### Concepts

Regex metacharacters

| Symbol | Meaning |
|---------|----------|
| `.` | Any single character |
| `*` | Zero or more |
| `+` | One or more |
| `?` | Optional |

Example

```tcl
regexp {P.th} $line
```

---

## Exercise 4 – Character Classes

### Concepts

Matching groups of characters

### Character Classes

| Pattern | Meaning |
|----------|---------|
| `[0-9]` | Digits |
| `[A-Z]` | Uppercase |
| `[a-z]` | Lowercase |
| `[A-Za-z]` | Alphabets |
| `[A-Za-z0-9]` | Alphanumeric |

Example

```tcl
regexp {[0-9]+} $line
```

---

## Exercise 5 – Capturing Groups

### Concepts

- Extract values
- Multiple captures
- Store matches into variables

Example

```tcl
regexp {(Path\d+)\s+(-?\d+\.\d+)\s+(FAIL|PASS)} \
       $line \
       match path slack status
```

---

## Exercise 6 – `regsub`

### Concepts

- Replace text
- Replace all occurrences
- String transformation

### Commands Learned

```tcl
regsub {FAIL} $line PASS result

regsub -all {FAIL} $line PASS result
```

---

## Exercise 7 – Parsing Timing Reports

### Concepts

- Read timing reports
- Extract:
  - Path
  - Slack
  - Status
- Count PASS/FAIL
- Find Worst Slack

Example

```tcl
regexp {(Path\d+)\s+(-?\d+\.\d+)\s+(FAIL|PASS)}
```

---

## Exercise 8 – Parsing Log Files

### Concepts

- Parse log files
- Count INFO
- Count WARNING
- Count ERROR
- Store ERROR messages

Example

```tcl
regexp {^ERROR:} $line
```

---

# 🚀 Mini Project

## EDA Timing Report Parser

### Features

- Read timing report
- Extract Path, Slack and Status
- Count PASS paths
- Count FAIL paths
- Find Worst Negative Slack (WNS)
- Store FAIL paths
- Generate summary report

---

# 📖 Commands Learned

| Command | Purpose |
|----------|----------|
| `regexp` | Search and match patterns |
| `regsub` | Search and replace text |
| `open` | Open report file |
| `close` | Close file |
| `gets` | Read file line-by-line |
| `while` | Process report |
| `if` | Decision making |
| `lappend` | Store extracted data |
| `foreach` | Iterate over extracted data |

---

# 📌 Common Regex Patterns

| Pattern | Meaning | Example Match |
|----------|---------|---------------|
| `FAIL` | Exact word | FAIL |
| `.` | Any character | A, 1, _ |
| `*` | Zero or more | AAA |
| `+` | One or more | 123 |
| `?` | Optional | color / colour |
| `[0-9]` | Digit | 7 |
| `[0-9]+` | Number | 12345 |
| `[A-Z]+` | Uppercase word | CPU |
| `[a-z]+` | Lowercase word | clock |
| `[A-Za-z]+` | Alphabetic word | Path |
| `\d+` | One or more digits | 456 |
| `\.` | Literal dot | . |
| `\s+` | One or more spaces | "   " |
| `^ERROR:` | Starts with ERROR | ERROR: Clock Missing |
| `(FAIL|PASS)` | Either FAIL or PASS | PASS |

---

# 💡 `regexp` vs `string match`

| `string match` | `regexp` |
|----------------|----------|
| Simple wildcard matching | Advanced pattern matching |
| Uses `*` and `?` | Uses regex syntax |
| Good for simple searches | Good for parsing and extraction |
| Cannot easily extract values | Can capture multiple values |

Example

```tcl
string match "*FAIL*" $line
```

vs

```tcl
regexp {FAIL} $line
```

---

# 💡 `regexp` vs `regsub`

| `regexp` | `regsub` |
|-----------|----------|
| Searches text | Replaces text |
| Can extract values | Modifies text |
| Returns match | Returns updated string |

---

Example

```tcl
set line "Path12 -0.25 FAIL"

regexp {(Path\d+)\s+(-?\d+\.\d+)\s+(FAIL|PASS)} \
       $line \
       match path slack status

puts $path
puts $slack
puts $status
```

Output

```
Path12
-0.25
FAIL
```


# ▶️ Run the Programs

Run any exercise using:

```bash
tclsh exercise01_intro_regex.tcl
```

Examples

```bash
tclsh exercise05_capturing_groups.tcl

tclsh exercise07_timing_report_parser.tcl

tclsh exercise08_log_parser.tcl

tclsh mini_project_eda_report_parser.tcl
```

---
