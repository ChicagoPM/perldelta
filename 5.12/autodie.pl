
sub old {
    open my $fh, '<', 'DOESNOTEXIST'
        or die "Can't open 'DOESNOTEXIST' for reading: '$!'";
}

sub new {
    use autodie;
    open my $fh, '<', 'DOESNOTEXIST';
}

use feature qw( say );

eval { old(); };
say "old(): $@";

eval { new(); };
say "new(): $@";
