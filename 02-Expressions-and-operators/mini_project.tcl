if {0} {
    Problem Statement

An engineer enters:

Length = 25

Width = 10

Height = 8

The calculator should compute:

Addition
Subtraction
Multiplication
Division
Volume
Area
Square
Square Root
Comparison
Logical Operations
}

#==================================================
# Mini Project
# Engineering Calculator
#==================================================

#-------------------------
# Input Values
#-------------------------

set length 25
set width 10
set height 8

#-------------------------
# Arithmetic
#-------------------------

set addition       [expr {$length + $width}]
set subtraction    [expr {$length - $width}]
set multiplication [expr {$length * $width}]
set division       [expr {double($length) / $width}]

#-------------------------
# Engineering Calculations
#-------------------------

set area   [expr {$length * $width}]
set volume [expr {$length * $width * $height}]

#-------------------------
# Scientific
#-------------------------

set square [expr {pow($length,2)}]
set root   [expr {sqrt($length)}]

#-------------------------
# Comparisons
#-------------------------

set greater [expr {$length > $width}]
set equal   [expr {$length == $width}]

#-------------------------
# Logical Operations
#-------------------------

set logic1 [expr {($length > $width) && ($height > 5)}]
set logic2 [expr {($length < $width) || ($height > 5)}]

#-------------------------
# Display
#-------------------------

puts "=================================================="
puts "          ENGINEERING CALCULATOR"
puts "=================================================="

puts ""
puts "Input Values"
puts "------------"

puts "Length : $length"
puts "Width  : $width"
puts "Height : $height"

puts ""
puts "Arithmetic Operations"
puts "---------------------"

puts "Addition       : $addition"
puts "Subtraction    : $subtraction"
puts "Multiplication : $multiplication"
puts "Division       : $division"

puts ""
puts "Engineering Calculations"
puts "------------------------"

puts "Rectangle Area : $area"
puts "Box Volume     : $volume"

puts ""
puts "Scientific Functions"
puts "--------------------"

puts "Square of Length : $square"
puts "Square Root      : $root"

puts ""
puts "Comparison"
puts "----------"

puts "Length > Width  : $greater"
puts "Length == Width : $equal"

puts ""
puts "Logical Operations"
puts "------------------"

puts "(Length > Width) && (Height > 5) : $logic1"
puts "(Length < Width) || (Height > 5) : $logic2"

puts ""
puts "=================================================="




