
use feature qw( say current_sub );

my $old; $old = sub {
    my ( $i ) = @_;
    return $i if $i <= 1;
    return $old->( $i - 1 ) + $old->( $i - 2 );
};
# Hello memory leak!

my $new = sub {
    my ( $i ) = @_;
    return $i if $i <= 1;
    return __SUB__->( $i - 1 ) + __SUB__->( $i - 2 );
};

say $old->( 3 );
say $new->( 3 );
