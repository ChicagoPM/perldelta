
use feature qw( say );

sub old_change {
    my ( $to_change ) = @_;
    my $changed = $to_change;
    $changed =~ s/foo/bar/;
    say "$to_change -> $changed";
}

sub new_change {
    my ( $to_change ) = @_;
    my $changed = $to_change =~ s/foo/bar/r;
    say "$to_change -> $changed";
}

old_change( "foo" );
new_change( "foo" );
