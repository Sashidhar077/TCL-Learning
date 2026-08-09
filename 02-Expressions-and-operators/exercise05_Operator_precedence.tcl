if {0} {
    Create:

set a 10
set b 5
set c 2

Calculate:
 
a + b * c
(a + b) * c
a - b / c
(a - b) / c
(a + b) * (c + 3)
}


set a 10
set b 5
set c 2

set p [expr {$a + $b * $c}]
set q [expr {($a + $b) * $c}]
set r [expr {$a - $b /$c}]
set s [expr {($a - $b) / $c}]
set t [expr {($a + $b) * ($c + 3)}]


puts "==============================="
puts "Operator Precedence"
puts "==============================="
puts ""

puts "a = $a"
puts "b = $b"
puts "c = $c"
puts ""
puts "a + b * c         : $p"
puts "(a + b) * c       : $q"
puts "a - b / c         : $r"
puts "(a - b) / c       : $s"
puts "(a + b) * (c + 3) : $t"


