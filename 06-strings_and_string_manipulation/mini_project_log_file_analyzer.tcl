if {0} {
Mini Project
EDA Log File Analyzer

Problem Statement : 
Analyze a sample EDA log.

Count

INFO
WARNING
ERROR
PASS
 
Display a summary report.
}

set logLines {
    "INFO: Design Loaded"
    "WARNING: High Fanout Net"
    "INFO: Timing Analysis Started"
    "ERROR: Clock Not Found"
    "PASS: Constraints Loaded"
    "INFO: Timing Analysis Completed"
}


set infoCount 0
set warningCount 0
set errorCount 0
set passCount 0

foreach line $logLines {

    if {[string first "INFO" $line] == 0} {

        incr infoCount

    } elseif {[string first "WARNING" $line] == 0} {

        incr warningCount

    } elseif {[string first "ERROR" $line] == 0} {

        incr errorCount

    } elseif {[string first "PASS" $line] == 0} {

        incr passCount

    }

}

puts "==========================================="
puts "EDA Log File Analyzer"
puts "==========================================="
puts ""

puts  "INFO $infoCount"
puts  "WARNING $warningCount"
puts  "ERROR $errorCount"
puts  "PASS $passCount"

puts ""
puts "==========================================="
puts "Analysis Completed"
puts "==========================================="