
use feature qw( say );

my $href = {
    foo => "bar",
};
my $aref = [ "foo", "bar" ];

say %{ $href };
say $href->%*;

say @{ $aref };
say $aref->@*;
