if {0} {
Given the following string:

Path3 -0.15 FAIL

Write a Tcl program to:

Check whether "FAIL" exists
Store the matched word in a variable
Display the matched word
}

set Path3 "-0.15 FAIL"

regexp {FAIL} $Path3 result

if {[regexp {FAIL} $Path3 match]} {
    puts "Match found \n"
    puts $match
} else {
    puts "Match not found"
}

 










