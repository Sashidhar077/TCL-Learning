if {0} {
Create a Tcl dictionary named employee with the following information:

name       → Ravi
id         → 101
age        → 22
department → VLSI
salary     → 50000

Then use dict get to print:

Employee name
Employee ID
Employee department
Employee salary
}

set employee [dict create \
name        Ravi \
id          101 \
age         22 \
department  VLSI \
salary      50000
]

puts "Employee Name : [dict get $employee name]"
puts "Employee ID   : [dict get $employee id]"
puts "Department    : [dict get $employee department]"
puts "Salary        : [dict get $employee salary]"



































