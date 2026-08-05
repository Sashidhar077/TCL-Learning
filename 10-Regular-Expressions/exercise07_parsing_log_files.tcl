if {0} {
Problem Statement

Read a log file.

Count:
1. INFO
2. WARNING
3. ERROR

Display summary.
}

puts "Log File Parser"



set infoCount 0
set warningCount 0
set errorCount 0

set errorList {}


set logFile [open "flow.log" r]


while {[gets $logFile line] != -1} {

    puts $line

    if {[regexp {^INFO:} $line]} {
        incr infoCount
    }

    if {[regexp {^WARNING:} $line]} {
        incr warningCount
    }

    if {[regexp {^ERROR:} $line]} {

        incr errorCount
        lappend errorList $line

    }

}

close $logFile


puts "Errors"
puts ""

foreach error $errorList {

    puts $error

}

puts ""
puts "Summary"
puts ""

puts "INFO Messages    : $infoCount"
puts "WARNING Messages : $warningCount"
puts "ERROR Messages   : $errorCount"