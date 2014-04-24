
use feature qw( say signatures );

sub old {
    my ( $bar, @baz ) = @_;
    die "First argument missing" unless $bar;
    say "$bar -> @baz";
}

sub new( $bar, @baz ) {
    say "$bar -> @baz";
}

old( "foo" );
eval { old() };
say "old(): $@";

new( "foo" );
eval { new() };
say "new(): $@";

