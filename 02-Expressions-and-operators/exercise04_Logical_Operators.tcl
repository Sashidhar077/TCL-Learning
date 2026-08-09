if {0} {
    Create three variables:

set timingClean 1
set drcClean 0
set ecoMode 1
 
Print  the results of:

timingClean && drcClean
timingClean || drcClean
drcClean || ecoMode
!drcClean
!timingClean
}

set timingClean 1
set drcClean 0
set ecoMode 1

set a [expr {$timingClean && $drcClean}]
set b [expr {$timingClean || $drcClean}]
set c [expr {$drcClean || $ecoMode}]
set d [expr {!($drcClean)}]
set e [expr {!($timingClean)}]

puts "===================="
puts "Logical Operators"
puts "===================="
puts "Timing Clean : $timingClean"
puts "DRC Clean    : $drcClean"
puts "Eco Mode     : $ecoMode"
puts "timingClean && drcClean : $a"
puts "timingClean || drcClean : $b" 
puts "drcClean || ecoMode     : $c"
puts "!drcClean               : $d"
puts "!timingClean            : $e"






















