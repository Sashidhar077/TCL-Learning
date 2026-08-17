proc double_value {variable} {

    upvar 1 $variable value

    set value [expr {$value * 2}]
}

set number 10

double_value number

puts "Number: $number"