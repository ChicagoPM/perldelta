
use feature qw( say );

my @array = qw( fooo baro bazo );

sub old {
    say for map { my $x = $_; $x =~ s/o/0/; $x } qw( foo bar baz );
}

sub new {
    say for map { s/o/0/r } @_;
}

say "old()";
old( @array );
say "new()";
new( @array );
