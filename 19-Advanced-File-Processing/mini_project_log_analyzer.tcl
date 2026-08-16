if {0} {
Simple Log Analyzer

This project combines the concepts from Exercises 1–4. Your module specifies that it should accept a log file, report the filename, total lines, INFO, WARNING, and ERROR counts, and determine PASSED or FAILED based on whether there is at least one error
}

if {$argc != 1} {

    puts "Usage: tclsh mini_project_log_analyzer.tcl <log_file>"

    exit 1
}

set filename [lindex $argv 0]


if {![file exists $filename]} {

    puts "Error: File not found: $filename"

    exit 1
}

set fp [open $filename r]

set total_lines 0
set info_count 0
set warning_count 0
set error_count 0


while {[gets $fp line] >= 0} {

    incr total_lines

    if {[string match "INFO:*" $line]} {
        incr info_count
    }

    if {[string match "WARNING:*" $line]} {
        incr warning_count
    }

    if {[string match "ERROR:*" $line]} {
        incr error_count
    }
}

close $fp


if {$error_count > 0} {
    set status "FAILED"
} else {
    set status "PASSED"
}


puts "========================================"
puts "          LOG ANALYSIS REPORT"
puts "========================================"

puts "File       : $filename"
puts "Total Lines: $total_lines"

puts ""

puts "INFO       : $info_count"
puts "WARNING    : $warning_count"
puts "ERROR      : $error_count"

puts ""

puts "Status     : $status"

puts "========================================"