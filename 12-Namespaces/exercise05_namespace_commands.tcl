if {0} {
Create a Tcl namespace called eda.

Inside the namespace:

Create a procedure called show_namespace.
Use namespace current inside the procedure to display the current namespace.
Outside the namespace, use namespace exists to check whether the eda namespace exists.
Print an appropriate message.
}

namespace eval eda {

    proc show_namespace {} {

        puts "Current namespace: [namespace current]"
    }
}

::eda::show_namespace

if {[namespace exists ::eda]} {

    puts "EDA namespace exists"

} else {

    puts "EDA namespace does not exist"
}















