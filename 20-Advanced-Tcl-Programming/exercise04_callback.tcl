if {0} {
Create:

add
multiply
apply_operation

apply_operation receives:

Procedure name
First number
Second number
}

proc add {a b} {
    return [expr {$a + $b}]
}

proc multiply {a b} {
    return [expr {$a * $b}]
}

proc apply_operation {operation a b} {
    return [$operation $a $b]
}

set result [apply_operation add 10 20]
puts "Addition result : $result"

set result [apply_operation multiply 10 20]
puts "Multiplication result : $result"














