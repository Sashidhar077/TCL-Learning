if {0} {
Problem Statement
Create an array named tool
Check whether the array exists
Check whether another array named design exists
Display appropriate messages
}

array set tool {
    name	PrimeTime
    company	Synopsys
    version	R2025.06
    license	Active
}

puts "Checking arrays \n"
if {[array exists tool] == 1} {
    puts "tool Array Exists"
} else {
    puts "tool Array Not Exists"
} 
puts "-----------------------------------"
puts ""

if {[array exists design]} {
    puts "design Array Exists"
} else {
    puts "design Array does not Exists"
}










