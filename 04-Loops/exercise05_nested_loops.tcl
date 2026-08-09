if {0} {
    Exercise 5
Problem Statement

Print the following pattern:

*
* *
* * *
* * * *
* * * * *
}
 
puts "----------------Star pattern---------------------"
puts ""
for {set rows 1} {$rows <=5} {incr rows} {
    for {set col 1} {$col <= $rows} {incr col} {
        puts -nonewline "* "
        
    }
    puts ""
} 










