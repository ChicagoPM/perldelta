
use feature qw( say switch );

sub condition {
    my ( $foo ) = @_;

    if ( $foo =~ /^FX/ ) {
        say "Foreign Exchange!";
    }
    elsif ( $foo =~ /^UST/ ) {
        say "US Treasuries";
    }
    else {
        say "Unknown!";
    }
}

sub given_when {
    my ( $foo ) = @_;
    given ( $foo ) {
        when ( /^FX/ ) {
            say "Foreign Exchange";
        }
        when ( /^UST/ ) {
            say "US Treasuries";
        }
        default {
            say "Unknown!";
        }
    }
}

sub for_when {
    for ( @_ ) {
        when ( /^FX/ ) {
            say "Foreign Exchange";
        }
        when ( /^UST/ ) {
            say "US Treasuries";
        }
        default {
            say "Unknown!";
        }
    }
}

condition( 'FXEUR' );
given_when( 'FXEUR' );
given_when( 'UST30Y' );
for_when( 'FXEUR', 'UST30Y' );
