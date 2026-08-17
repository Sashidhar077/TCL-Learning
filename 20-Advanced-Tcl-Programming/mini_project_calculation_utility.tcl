# MINI PROJECT : REUSABLE CALCULATION UTILITY


proc add {a b} {
    return [expr {$a + $b}]
}

proc subtract {a b} {
    return [expr {$a - $b}]
}

proc multiply {a b} {
    return [expr {$a * $b}]
}

proc divide {a b} {

    if {$b == 0} {
        error "Cannot divide by zero"
    }

    return [expr {$a / double($b)}]
}

if {$argc != 3} {

    puts "Usage: tclsh mini_project_calculation_utility.tcl <operation> <number1> <number2>"

    puts "Operations: add subtract multiply divide"

    exit 1
}


set operation [lindex $argv 0]
set number1 [lindex $argv 1]
set number2 [lindex $argv 2]



if {$operation ni {add subtract multiply divide}} {

    puts "Error: Unknown operation: $operation"

    puts "Available operations: add subtract multiply divide"

    exit 1
}

if {[catch {

    set result [$operation $number1 $number2]

} error_message]} {

    puts "Error: $error_message"

    exit 1
}


puts "================================="
puts "      CALCULATION UTILITY"
puts "================================="
puts "Operation : $operation"
puts "Number 1  : $number1"
puts "Number 2  : $number2"
puts "Result    : $result"
puts "================================="