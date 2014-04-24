
use feature qw( say );

my %hash = ( foo => 0, bar => 1 );
my @array = qw( foo bar );

my %old_part_hash = map { $_ => $hash{$_} }
                    grep { $_ eq 'foo' }
                    keys %hash;

my %part_hash = %hash{"foo"};
say "part_hash{foo} -> $part_hash{foo}";

my %part_array = %array[0];
say "part_array{0} -> $part_array{0}";


