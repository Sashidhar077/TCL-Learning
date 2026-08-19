if {0} {
Create a Tcl program containing:

U1 → NAND
U2 → AND
U3 → NAND
U4 → NAND
U5 → AND

The program should calculate:

Total number of cells
Number of NAND cells
Number of AND cells
}

set design [dict create\
    U1 NAND \
    U2 AND \
    U3 NAND \
    U4 NAND \
    U5 AND
]

set total_count 0 
set nand_count 0
set and_count 0

dict for {cell type} $design {
    incr total_count

    if {$type eq "NAND"} {
        incr nand_count
    } elseif {$type eq "AND"} {
        incr and_count
    }
}

puts "\n===========DESIGN SUMMARY=====================\n"
puts "Total Cells : $total_count"
puts "NAND Cells  : $nand_count"
puts "AND Cells   : $and_count"

puts "=================================================="
