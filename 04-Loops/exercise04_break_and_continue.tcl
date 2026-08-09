if {0} {
    Problem Statement
Print numbers from 1 to 10, but stop when the number reaches 6.
Using continue
Problem Statement
Print numbers from 1 to 10.
Skip 5.
}

for {set i 1} {$i <= 10} {incr i} {
   
   
    if {$i == 6} {
        break
    }
     if {$i == 5} {
        continue
     }
     puts $i
}