# StudentUtils package

namespace eval StudentUtils {

    proc get_grade {marks} {

        if {$marks >= 90} {
            return "A"
        } elseif {$marks >= 80} {
            return "B"
        } elseif {$marks >= 70} {
            return "C"
        } elseif {$marks >= 60} {
            return "D"
        } else {
            return "F"
        }
    }

    proc display_student {name marks} {

        set grade [get_grade $marks]

        puts "Student: $name"
        puts "Marks: $marks"
        puts "Grade: $grade"
    }
}

package provide StudentUtils 1.0