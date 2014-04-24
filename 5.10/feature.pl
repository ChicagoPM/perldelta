
use feature qw( say );

say "Hello, World!";

use feature qw( :5.10 );

given ( $^V ) {
    when ( $_ lt v5.14 ) {
        say "Hello, history!";
    }
    when ( $_ gt v5.14 ) {
        say "Hello, future!";
    }
}

