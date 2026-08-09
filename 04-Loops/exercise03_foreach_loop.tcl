if {0} {
    Exercise 3
Print Student Names
Problem Statement

Create a list:

Rahul
Priya
Arjun
Sneha
Kiran

Print each student's name.
} 

set names {Rahul Priya Arjun Sneha Kiran} 
puts "Student Names" 
puts ""
foreach name $names {
    puts $name
}