if {0} {
==================================================
Mini Project
EDA Timing Report Parser
==================================================

Operations

1. Read timing report
2. Extract Path, Slack, Status
3. Count PASS/FAIL
4. Find Worst Slack
5. Generate summary report
}

puts "========================================"
puts "EDA Timing Report Parser"
puts "========================================"
puts ""

#----------------------------------------
# Initialize Variables
#----------------------------------------

set totalPaths 0
set passCount 0
set failCount 0
set worstSlack 99999
set failPaths {}

#----------------------------------------
# Open Timing Report
#----------------------------------------

if {[catch {open "timing.rpt" r} report]} {
    puts "ERROR: Unable to open timing.rpt"
    exit
}

#----------------------------------------
# Read File
#----------------------------------------

while {[gets $report line] != -1} {

    if {[regexp {(Path[0-9]+)\s+(-?\d+\.\d+)\s+(FAIL|PASS)} \
            $line \
            match path slack status]} {

        incr totalPaths

        puts "Path   : $path"
        puts "Slack  : $slack"
        puts "Status : $status"
        puts ""

        if {$status eq "PASS"} {
            incr passCount
        } else {
            incr failCount
            lappend failPaths $line
        }

        if {$slack < $worstSlack} {
            set worstSlack $slack
        }
    }
}
 
close $report

#----------------------------------------
# Display Summary
#----------------------------------------

puts "----------------------------------------"
puts ""
puts "Summary"
puts ""

puts "Total Paths : $totalPaths"
puts "PASS Paths  : $passCount"
puts "FAIL Paths  : $failCount"
puts ""
puts "Worst Slack : $worstSlack"

#----------------------------------------
# Generate Summary Report
#----------------------------------------

set out [open "summary.rpt" w]

puts $out "Timing Report Summary"
puts $out "====================="
puts $out ""

puts $out "Total Paths : $totalPaths"
puts $out "PASS Paths  : $passCount"
puts $out "FAIL Paths  : $failCount"
puts $out ""

puts $out "Worst Slack : $worstSlack"
puts $out ""

puts $out "Failing Paths"
puts $out "-------------"

foreach path $failPaths {
    puts $out $path
}

close $out

puts ""
puts "Summary report generated successfully!"