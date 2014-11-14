
use feature qw( say postderef );

my $href = {
    foo => "bar",
    baz => 'fuzz',
    soda => 'pop',
};
my $aref = [ "foo", "bar", "baz", "fuzz" ];

say "-- Circumfix array dereference";
say @{ $aref };

say "-- Postfix array dereference";
say $aref->@*;

say "-- Circumfix hash dereference";
say %{ $href };

say "-- Postfix hash dereference";
say $href->%*;

say "-- Circumfix array slice";
say @{ $aref }[ 1..2 ];

say "-- Postfix array slice";
say $aref->@[ 1..2 ];

say "-- Circumfix hash slice";
say %{ $href }{ 'soda', 'foo' };

say "-- Postfix hash array-slice";
say $href->@{ 'soda', 'foo' };

say "-- Postfix hash hash-slice";
say $href->%{ 'soda', 'foo' };
