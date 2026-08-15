if {0} {
Exercise 2 — Capture command output

Write a TCL program that:

Runs date
Stores the output in a variable called current_time
Prints:
Current System Time:
<time>
}

set p [exec date]

puts "Current system date and  time : $p"
















