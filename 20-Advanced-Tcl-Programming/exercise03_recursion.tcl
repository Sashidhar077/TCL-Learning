#Create a recursive procedure that calculates factorial


proc factorial {n} {
    if {$n <= 1} {
        return 1
    }

    return [expr {$n * [factorial [expr {$n-1}]]}]
}

set result [factorial 5]

puts "Factorial : $result"















