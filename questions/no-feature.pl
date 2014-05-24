
use strict;
use warnings;
use feature qw( :5.18 );
no feature qw( say );

sub say {
    print "@_!\n";
}

say( "Hello, World" );
main::say( "Hello, World" );
CORE::say( "Hello, World" );
CORE::say for qw( foo bar baz );
