if {0} {
Create a procedure named:

greet

If no name is given,

Print:

Welcome Guest

Otherwise,
 
Print:

Welcome Rahul
}

proc greet {{name "Guest"}} {
    puts "Welcome $name"
}

greet
greet Rahul
greet Priya



if {0} {
ANOTHER EXAMPLE

proc rectangleArea {Length {Width 10}} {
    return [expr {$Length * $Width}]
}

puts [rectangleArea 5]
puts [rectangleArea 10 50]


}

