namespace eval greet {
    proc hello {} {
        puts "hello from greeting package"
    }
}

package provide greet 1.0
