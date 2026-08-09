if {0} {
Create a Tcl dictionary named employee containing:

name → Ravi
id → 101
department → ASIC
salary → 50000

Inside the same dictionary, create a nested dictionary called address containing:

city → Hyderabad
state → Telangana
pincode → 500001

Then:

Print the employee name.
Print the employee department.
Print the employee city from the nested dictionary.
Print the employee pincode.
Update the city from Hyderabad to Bangalore.
Print the updated city.
}

set address [dict create \
     city Hyderabad \
     state Telangana \
     pincode 500001                
]


set employee [dict create \
    name        Ravi \
    id          101 \
    age         22 \
    department  VLSI \
    salary      50000 \
    address $address
]


puts "Employee Name: [dict get $employee name]"
puts "Department: [dict get $employee department]"

puts "City: [dict get $employee address city]"
puts "Pincode: [dict get $employee address pincode]"

dict set employee address city Bangalore


puts "Updated City: [dict get $employee address city]"






