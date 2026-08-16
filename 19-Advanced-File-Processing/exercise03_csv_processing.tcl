if {0} {
Your program should:

Accept one CSV filename from the command line.
Check that exactly one argument was provided.
Check whether the file exists.
Open the file.
Skip the header.
Read each remaining line.
Split each line using ,.
Extract name and marks using lindex.
Print the student information.
Close the file.
}


# Check argument

if {$argc != 1} {
    puts "Usage: tclsh exercise03_csv_processing.tcl <csv_file>"
    exit 1
}

set filename [lindex $argv 0]

if {![file exists $filename]} {
    puts "Error: File not found"
    exit 1
}

set fp [open $filename r]


gets $fp header

while {[gets $fp line] >= 0} {

    if {$line eq ""} {
        continue
    }

    set fields [split $line ","]

    set name [lindex $fields 0]
    set marks [lindex $fields 1]

    puts "Student: $name    Marks: $marks"
}

close $fp




























