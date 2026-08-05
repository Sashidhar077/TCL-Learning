if {0} {
==================================================
Mini Project
Student Report File Manager
==================================================

Operations

1. Create Report
2. Append Information
3. Read Line by Line
4. Read Entire File
5. Create Backup
}

puts "========================================"
puts "Student Report File Manager"
puts "========================================"
puts ""

#=========================================
# Create Report
#=========================================

puts "Creating Student Report..."
puts ""

set fp [open "student_report.txt" w]

puts $fp "Student Report"
puts $fp ""

puts $fp "Name   : Rahul"
puts $fp "Roll   : 23ECE101"
puts $fp "Branch : ECE"
puts $fp "Marks  : 92"

close $fp

puts "Student Report Created"
puts ""

#=========================================
# Append Information
#=========================================

puts "Appending Student Information..."
puts ""

set fp [open "student_report.txt" a]

puts $fp "Grade  : A"
puts $fp "Result : PASS"

close $fp

puts "Information Added"
puts ""

#=========================================
# Read Line by Line
#=========================================

puts "Reading Report..."
puts ""

if {[catch {open "student_report.txt" r} fp]} {

    puts "Unable to Open File"
    exit

}

while {[gets $fp line] != -1} {

    puts $line

}

close $fp

puts ""
puts "----------------------------------------"
puts ""

#=========================================
# Read Entire File
#=========================================

puts "Reading Entire File..."
puts ""

set fp [open "student_report.txt" r]

set report [read $fp]

close $fp

puts $report

puts ""
puts "----------------------------------------"
puts ""

#=========================================
# Create Backup
#=========================================

puts "Creating Backup..."
puts ""

set backup [open "student_backup.txt" w]

puts $backup $report

close $backup

puts "Backup Created Successfully"

puts ""
puts "========================================"
puts "Program Completed"
puts "========================================"