if {0} {
We're going to create a small TCL program where the user enters a Linux command and TCL executes it.

For example:

================================
      TCL SYSTEM RUNNER
================================


Enter command: pwd


Output:
 /home/steve/tcl

Or:

Enter command: whoami


Output:
steve

And if the user enters an invalid command:

Enter command: abcxyz


Error: Command execution failed
}

puts "========================================="
puts "        TCL SYSTEM COMMAND RUNNER"
puts "========================================="
puts ""

puts -nonewline "Enter system command : "
flush stdout

gets stdin command

set output ""

if {[catch {exec $command} output]} {
    puts "Command execution falied \ Error : $output \n Enter a valid system command"
} else {
    puts "Command execution successful \n Output : $output"
}























