if {0} {
Write a Tcl program that:

Creates a procedure called check_marks.
Accepts marks as an argument.
If marks are less than 0 or greater than 100, use throw to generate an error.
Otherwise, print the marks.
Use try to handle the error.
}

proc check_marks {marks} {

    if {$marks < 0 || $marks > 100} {

        throw {INVALID_MARKS} "Marks must be between 0 and 100"

    } else {

        puts "Marks: $marks"
    }
}

try {

    check_marks 120

} on error {message options} {

    puts "Error: $message"
}














