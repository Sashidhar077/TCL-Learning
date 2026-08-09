if {0} {
    Student Grade Calculator
Question

Create a variable:

set marks 82

Display the grade using the following rules:
 
Marks	Grade
≥ 90	A
≥ 75	B
≥ 60	C
≥ 40	D
< 40	F
}
set marks 82
puts "Marks : $marks"
if {$marks >= 90} {
    puts "Grade : A"
} elseif {$marks >= 75} {
    puts "Grade : B"
} elseif {$marks >= 60} {
    puts "Grade : C"
} elseif {$marks >= 40} {
    puts "Grade : D"
} else  {
    puts "Grade : F"
}

