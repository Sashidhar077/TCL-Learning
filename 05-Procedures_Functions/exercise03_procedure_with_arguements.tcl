if {0} {
Create a procedure called greetStudent.

The procedure should accept one argument:

Student Name

Print:

Welcome Rahul

Call the procedure for:

Rahul
Priya
Arjun
}

#procedure definition
proc greetStudent {name} {
    puts "Welcome $name"
}

#procedure calls
greetStudent Rahul
greetStudent Priya
greetStudent Arjun