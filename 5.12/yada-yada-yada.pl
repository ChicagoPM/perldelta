
use feature qw( say );

sub foo { die "Unimplemented" }

eval { foo(); };
say "foo(): $@";

sub bar { ... }

eval { bar(); };
say "bar(): $@";

