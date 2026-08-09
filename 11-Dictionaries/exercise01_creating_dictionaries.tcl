if {0} {
Create a dictionary called employee containing:

Key	Value
name	Your name
id	101
age	22
department	VLSI
salary	50000
}

set p [dict create \
    name	Rahul \
    id	101 \
    age	22 \
    department	VLSI \
    salary	50000 
]

puts $p
puts [dict get $p]












