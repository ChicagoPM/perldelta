
use feature qw( say );

sub false_default {
    say shift || "Default";
}

sub defined_default {
    say shift // "Default";
}

false_default( 1 );
false_default( 0 );
false_default( );

defined_default( 1 );
defined_default( 0 );
defined_default( );
