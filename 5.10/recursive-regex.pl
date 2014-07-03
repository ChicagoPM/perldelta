
use feature qw( say );

my $in = "[ [ 1 2 ] 3 [ 4 5 ] ]";

# INT -> \d+
# LIST -> "[" (LIST|INT)* "]"
my $parse = qr(
    (?<LIST>
        \s*
        \[
        \s*
        (?:
            (?&LIST)
            |
            (?<INT>\d+)
            \s*
        )*
        \s*
        \]
        \s*
    )*
)x;

$in =~ $parse;
use Data::Dumper;
say Dumper \%+;
