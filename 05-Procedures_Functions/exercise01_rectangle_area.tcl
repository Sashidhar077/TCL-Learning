if {0} {
Create a procedure called rectangleArea.

Accept:

Length
Width
 
Print the area.
}

proc rectangleArea {Length Width} {
    set area [expr {$Length * $Width}]

    puts "Length : $Length"
    puts "Width  : $Width"
    puts "Area   : $area"

}

rectangleArea 10 20
puts ""
rectangleArea 30 3
puts ""
rectangleArea 2 9