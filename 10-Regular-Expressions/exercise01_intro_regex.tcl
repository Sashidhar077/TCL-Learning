if {0} {
Write a Tcl program that checks whether the word "FAIL" exists in the string:

Path1 -0.25 FAIL

If found, print:

Timing Violation Found

Otherwise print:

No Timing Violation
}

set Path1 "-0.25 FAIL"

set result [regexp {FAIL} $Path1]

if {$result} {
    puts "Timing Violation Found \n"
} else {
    puts "No Timing Violation"
}

















