if {0} {

    Create the following variables:

num1 = 25
num2 = 4
num3 = -18.75
  
Calculate and print:

Floating-point division (25 ÷ 4)
Square of 25
Square root of 25
Absolute value of -18.75
Round 18.75
Ceiling of 18.25
Floor of 18.75
}


set num1 25
set num2 4 
set num3  -18.75
set division [expr {double($num1) / $num2}]
set square [expr {pow($num1,2)}]
set root [expr {sqrt($num1)}]
set absolute [expr {abs($num3)}]
set round [expr {round(abs($num3))}]
set ceiling [expr {ceil(18.75)}]
set floorval [expr {floor(18.75)}]
puts "========================="
puts "Scientific Calculator"
puts "========================="
puts "Floating Division : $division"
puts "Square            : $square"
puts "Square root       : $root"
puts "Absolute Value    : $absolute"
puts "Rounded Value     : $round"
puts "Ceiling Value     : $ceiling"
puts "Floor Value       : $floorval"
