if {0} {
Write a Tcl program that executes:

uname -s

and displays the operating system
}

#to know os
set os [exec uname -s] 

puts "Operating system : $os"

#to know linux kernel realease
set p [exec uname -r]
puts "Linux kernel release : $p"


set hostname [exec hostname]
puts "Hostname : $hostname"