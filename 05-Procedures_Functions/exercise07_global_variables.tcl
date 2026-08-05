if {0} {
Create:

Global Variable

company = "Tech Corp"

Procedure

showCompany

Print the company name.
}

set company "Tech Corp"
proc showCompany {} {
    global company
    puts $company
}

showCompany







if {0} {

#modifying a global variable


set count 0

proc number {} {
    global count
    puts $count

    incr count 5
}

number
number
number

puts $count

}


