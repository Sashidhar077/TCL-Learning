if {0} {
Create the following list:

PrimeTime
ICC2
FusionCompiler
Innovus
Genus

Search for:

Innovus
VCS
 
Display whether each tool ex
}

set a {
    PrimeTime
    ICC2
    FusionCompiler
    Innovus
    Genus
}

puts "EDA Tools : \n $a" 

set b [lsearch $a Innovus]
if {$b!=-1} {
    puts "Innovus is found at index : $b"
} else {
    puts "Innovus not found"
}
set c [lsearch $a VCS]
if {$c!=-1} {
    puts "VCS is found at index : $c"
} else {
    puts "VCS not found"
}















