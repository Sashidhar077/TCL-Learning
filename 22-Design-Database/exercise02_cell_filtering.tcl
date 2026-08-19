if {0} {
Suppose our design contains these cells and cell types:

U1 → NAND
U2 → AND
U3 → NAND
U4 → OR
U5 → NAND

Write a Tcl program that prints only the NAND cells.
}

set cell_types [dict create \
    U1 NAND \
    U2 AND \
    U3 NAND \
    U4 OR \
    U5 NAND
]

puts "NAND Cells : "
dict for {cell type} $cell_types {
    if {$type eq "NAND"} {
        puts $cell
    }
}

















