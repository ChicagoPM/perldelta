
my $i = 0;
sub plus_i {
    print "$i\n";
    $i++;
}
plus_i() for 1..5;

use feature qw( state say );
sub plus_x {
    state $x = 0;
    say $x;
    $x++;
}
plus_x() for 1..5;
