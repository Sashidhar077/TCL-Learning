if {0} {
    Problem Statement

A school wants to automate student evaluation.

Input:

Student Name : Rahul
Marks        : 82
Attendance   : 91

Rules: 

Pass/Fail
Marks ≥ 40 → Pass
Otherwise → Fail
Grade
Marks	Grade
≥90	A
≥75	B
≥60	C
≥40	D
<40	F
Scholarship

A student gets a scholarship only if:

Grade is A or B
Attendance ≥90%
}

set studentname Rahul
set marks 82
set Attendance 91

#=======================================
#pass or fail 
#=======================================
if {$marks >= 40} {
    set status Pass
} else {
    set status Fail
}

#=======================================
#Grade
#=======================================
if {$marks >= 90} {
    set grade "A"
} elseif {$marks >= 75} {
    set grade "B"
} elseif {$marks >= 60} {
    set grade "C"
} elseif {$marks >= 40} {
    set grade "D"
} else {
    set grade "E"
}

#=======================================
#SCHOLARSHIP
#=======================================

if {($grade == "A" || $grade == "B") && $Attendance >= 90} {
   set scholarship "Eligible"
} else {
    set scholarship "Not eligible"
}

#=======================================
#displaying the report
#=======================================

puts "==============================="
puts "Student Grade Evaluation System"
puts "==============================="
puts ""
puts "Student Name : $studentname"
puts "Marks        : $marks"
puts "Attendance   : $Attendance"
puts ""
puts "------------------------------"
puts "          Result"
puts "------------------------------"
puts "Status      : $status"
puts "Grade       : $grade"
puts "Scholarship : $scholarship"
puts ""
puts "=============================="






