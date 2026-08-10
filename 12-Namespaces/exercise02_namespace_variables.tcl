if {0} {
Create a Tcl namespace called employee.

Inside the namespace:

Create a namespace variable called name with value Ravi.
Create a namespace variable called department with value VLSI.
Create a procedure called display_info.
Inside the procedure, access the namespace variables using variable.
Print the employee information.
}


namespace eval employee {
    variable name Rahul
    variable department VLSI

    proc display_info {} {
        variable name
        variable department

        puts "Employee Name : $name"
        puts "Department    : $department"
    }
}

employee::display_info
