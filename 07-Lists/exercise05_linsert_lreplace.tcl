if {0} {
Create the following list:

PrimeTime
ICC2
Innovus

Perform the following operations:

Insert FusionCompiler after PrimeTime
Replace Innovus with Genus
}
 
set a {
    PrimeTime
    ICC2
    Innovus
}
puts "Original list :  \n $a"

set a [linsert $a 1 FusionCompiler]
puts "After Insert"
puts $a

puts "After Replace"
set a [lreplace $a 3 3 Genus]
puts $a













