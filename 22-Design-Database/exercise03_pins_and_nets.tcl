if {0} {
Create a simple representation of a design where each cell has pins.

For example:

U1 → A B Y
U2 → A B Y
U3 → A B Y

Print:

Cell: U1
Pins: A B Y


Cell: U2
Pins: A B Y


Cell: U3
Pins: A B Y
}

set design [dict create]

dict set design U1 pins {A B Y}
dict set design U2 pins {A B c Y}
dict set design U3 pins {A B Y}

dict for {cell details} $design {
    puts "Cell : $cell"
    puts "Pins : [dict get $details pins]"
    puts ""
}




















