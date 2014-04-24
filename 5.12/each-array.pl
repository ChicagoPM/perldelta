
use feature qw( say );

my @array = qw( foo bar baz );

say 'C-style for loop';
for ( my $i = 0; $i < @array; $i++ ) {
    say "$i: $array[$i]";
}

say 'List of indicies';
for my $i ( 0..$#array ) {
    say "$i: $array[$i]";
}

say 'each @array';
while ( my ( $k, $v ) = each @array ) {
    say "$k: $v";
}

say 'keys @array';
say join ", ", keys @array;

say 'values @array';
say join ", ", values @array;

