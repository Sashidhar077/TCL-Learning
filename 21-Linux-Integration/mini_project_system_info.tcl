if {0} {
Create a Tcl program that displays basic Linux system information:

Current user
Operating system
Current directory
Hostname

The Tcl script will execute Linux commands, capture their output, and handle possible errors using catch
}


if {[catch {exec whoami} username]} {

    set username "Unknown"

}


if {[catch {exec uname -s} os]} {

    set os "Unknown"

}


if {[catch {exec pwd} current_dir]} {

    set current_dir "Unknown"

}

if {[catch {exec hostname} hostname]} {

    set hostname "Unknown"

}


puts "========================================"
puts "       LINUX SYSTEM INFORMATION"
puts "========================================"
puts "User            : $username"
puts "Operating System: $os"
puts "Current Dir     : $current_dir"
puts "Hostname        : $hostname"
puts "========================================"























