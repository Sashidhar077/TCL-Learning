if {0} {
Write a Tcl program that:

Takes a date and time as a string.
Converts it into a Unix timestamp using clock scan.
Prints the timestamp.
Converts the timestamp back into a readable date using clock format.

Use:

13 August 2026 10:00:00
}

set date_string "13 August 2026 10:00:00"


set timestamp [clock scan $date_string]


puts "Timestamp: $timestamp"

set formatted_date [clock format $timestamp]

puts "Date: $formatted_date"



















