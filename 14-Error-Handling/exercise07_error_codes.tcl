if {0} {
Create a Tcl program that:

Creates a procedure called check_age.
Accepts an age as an argument.
If the age is less than 18, generate an error using throw.
Use try to catch the error.
Check the error code from the options dictionary.
Print a different message when the error code is INVALID_AGE
}

proc check_age {age} {

    if {$age < 18} {

        throw {INVALID_AGE} "Age must be 18 or older"

    } else {

        puts "Age is valid"
    }
}

try {

    check_age 15

} on error {message options} {

    set error_code [dict get $options -errorcode]

    puts "Error Code: [lindex $error_code 0]"
    puts "Error Message: $message"
}













