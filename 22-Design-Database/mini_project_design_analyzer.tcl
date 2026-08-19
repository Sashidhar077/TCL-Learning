if {0} {
Create a simple design database containing:

Cell	Type	Area
U1	NAND	2.5
U2	AND	3.0
U3	NAND	2.5
U4	OR	3.2
U5	NAND	2.5

The Tcl program must calculate:

Total number of cells
Number of NAND cells
Number of AND cells
Total area
Largest cell
Largest cell area
}

set design [dict create]

dict set design U1 type NAND
dict set design U1 area 2.5

dict set design U2 type AND
dict set design U2 area 3.0

dict set design U3 type NAND
dict set design U3 area 2.5

dict set design U4 type OR
dict set design U4 area 3.2

dict set design U5 type NAND
dict set design U5 area 2.5


set total_cells 0
set nand_count 0
set and_count 0
set total_area 0
set largest_area 0
set largest_cell ""

dict for {cell details} $design {
   
    set type "unknown"
    if {[dict exists $details type]} {
        set type [dict get $details type]
    }

    set area 0.0
    if {[dict exists $details area]} {
        set area [dict get $details area]
    }

    incr total_cells

    if {$type eq "NAND"} {
        incr nand_count
    }


    if {$type eq "AND"} {
        incr and_count
    }

    set total_area [expr {$total_area + $area}]

    if {$area > $largest_area} {
        set largest_area $area
        set largest_cell $cell
    }
}

puts "\n===========DESIGN DATABASE ANALYSIS=====================================\n"

puts "Total Cells  : $total_cells"
puts "NAND Cells   : $nand_count"
puts "AND Cells    : $and_count"
puts "Total Area   : $total_area"
puts "Largest Cell : $largest_cell"
puts "Largest Area : $largest_area"

puts "========================================"














