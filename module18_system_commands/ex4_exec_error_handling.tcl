if {0} {
Write a TCL program that:

Tries to execute:

ls /wrong_directory
Uses catch

If successful, print:

Command Successful

If it fails, print:

Command Failed

and print the error message
}



set result ""
if {[catch {exec ls /wrong_directory} result]} {
    puts "command failed \n Error : $result"
} else {
    puts "command successful \n $result"
}



















