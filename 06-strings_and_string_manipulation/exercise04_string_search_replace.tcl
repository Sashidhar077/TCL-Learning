if {0} {
Create the following string:

Timing Report Generated Successfully

Perform these operations:

Find the word "Report"
Replace "Timing" with "Power"
Replace "Successfully" with "Completed"
}

set timingreport "Timing Report Generated Successfully"
set find [string first "Report" $timingreport ]
set replace1 [string map {"Timing" "Power"} $timingreport]
set replace2 [string map {"Successfully" "Completed"} $timingreport]
puts "Index of Report : $find"
puts "Upadated Report : $replace1"
puts "Final Report    : $replace2"
