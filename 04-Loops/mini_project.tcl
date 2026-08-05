if {0} {
==================================================
Mini Project
Student Report Generator
==================================================

Problem Statement

Generate a report for multiple students.

Input

Names:
Rahul Priya Arjun Sneha Kiran

Marks:
82 35 91 67 48

Rules

Marks >= 40 -> Pass
Otherwise -> Fail

Grade

>=90 -> A
>=75 -> B
>=60 -> C
>=40 -> D
<40  -> F

Display

- Name
- Marks
- Status
- Grade

Finally display

- Total Students
- Passed Students
- Failed Students
}

set studentNames {Rahul Priya Arjun Sneha Kiran}
set studentMarks {82 35 91 67 48}


set totalStudents 0
set passedStudents 0
set failedStudents 0

puts "========================================="
puts "Student Report Generator"
puts "========================================="


foreach name $studentNames marks $studentMarks {

    incr totalStudents

    if {$marks >= 40} {
        set status "Pass"
        incr passedStudents
    } else {
        set status "Fail"
        incr failedStudents
    }

    if {$marks >= 90} {
        set grade "A"
    } elseif {$marks >= 75} {
        set grade "B"
    } elseif {$marks >= 60} {
        set grade "C"
    } elseif {$marks >= 40} {
        set grade "D"
    } else {
        set grade "F"
    }

    puts ""
    puts "Name   : $name"
    puts "Marks  : $marks"
    puts "Status : $status"
    puts "Grade  : $grade"
    puts "-----------------------------"
}


puts ""
puts "========================================="
puts "Summary"
puts "========================================="
puts "Total Students : $totalStudents"
puts "Passed         : $passedStudents"
puts "Failed         : $failedStudents"