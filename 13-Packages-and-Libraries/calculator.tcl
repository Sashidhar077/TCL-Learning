namespace eval Calculator {
    proc add {a b} {
        return [expr {$a + $b}]
    }

    proc multiply {a b} {
        return [expr {$a * $b}]
    }
}

package provide Calculator 2.0












