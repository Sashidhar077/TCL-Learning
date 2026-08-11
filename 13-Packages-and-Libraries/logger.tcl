namespace eval Logger {
    proc info {message} {
        puts "INFO : $message"
    }
}

package provide Logger 1.0