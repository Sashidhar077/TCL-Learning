namespace eval MyUtils {
    proc greet {} {
        puts "Hello from MyUtils package!"
    }
}

package provide MyUtils 1.0