if {0} {
Create a main namespace called eda.

Inside eda, create two nested namespaces:

timing
power

Inside the timing namespace, create a procedure called report that prints:

Timing Report Generated

Inside the power namespace, create a procedure called report that prints:

Power Report Generated

Then call both procedures from outside the namespaces.
}


    
namespace eval eda::timing {

        proc report {} {
            puts "Timing report generated"
        }
}

namespace eval eda::power {

        proc report {} {
            puts "Power report generated"
        }
}
    


eda::timing::report
eda::power::report


















