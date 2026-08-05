#to print square of a number

proc square {n} {
    return [expr {$n * $n}]
}

set num 5
set result [square $num]
puts "square of number $num is $result "