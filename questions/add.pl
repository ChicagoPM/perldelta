
use feature qw( say signatures );

sub old_add {
    my ( $one, $two ) = @_;
    return $one unless defined $two;
    return $one + $two;
}

sub add( $one, $two=return $one ) {
    return $one + $two;
}

add( one => 1, two => 2 );

