if {0} {
Create a procedure named studentInfo.

Inside the procedure:

Create a variable called studentName
Print it
 
After calling the procedure, try printing the variable again.

Observe the error.
}

proc studentInfo {} {
    set studentName "Rahul"
    puts $studentName
}

studentInfo

#puts $studentName - this will return error "can't read "studentName": no such variable" because the variable studentName is a local variable and can be accessed inside a procedure only and we will get error when we tried to access a local variable outside the procedure