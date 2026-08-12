if {0} {
Write a Tcl program that:

Creates a procedure called check_age.
Accepts an age as an argument.
If the age is less than 18, generate an error using the error command.
Otherwise, print that the person is eligible.
Use catch when calling the procedure so the program handles the error safely.
}

proc check_age {age} {
    if {$age < 18} {
        error "Person must be less than 18,Not eligible to vote"
    } else {
        puts "Person is eligible"
    }
}

set age1 15
puts "Age : $age1"
if {[catch {check_age $age1} result]} {
    puts "Error : $result \n"
}

puts ""

set age2 22
puts "Age : $age2"
if {[catch {check_age $age2} result]} {
    puts "Error : $result"
}



