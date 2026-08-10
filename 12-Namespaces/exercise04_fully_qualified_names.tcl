if {0} {
Create a Tcl namespace called company.

Inside the namespace:

Create a variable name with value TechCorp.
Create a procedure show_name.
Inside the procedure, print the namespace variable.
From outside the namespace, access the variable using its fully qualified name.
Call the procedure using its fully qualified name.
}

namespace eval company {

    variable name TechCorp

    proc show_name {} {
        variable name

        puts "Company name : $name"
    }
}

#call procedure using fully qualified name

::company::show_name


#access namespace variable directly

puts "Direct access : $::company::name"


















