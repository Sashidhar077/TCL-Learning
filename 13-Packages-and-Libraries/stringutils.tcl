# StringUtils package

namespace eval StringUtils {

    proc uppercase {text} {
        return [string toupper $text]
    }

    proc length {text} {
        return [string length $text]
    }
}

package provide StringUtils 1.0