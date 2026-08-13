if {0} {
Write a Tcl program that:

Checks whether the HOME environment variable exists.
If it exists, print its value.
If it does not exist, print an appropriate message.
}

if {[info exists env(HOME)]} {

    puts "HOME exists"
    puts "Home Directory: $env(HOME)"

} else {

    puts "HOME environment variable does not exist"
}















