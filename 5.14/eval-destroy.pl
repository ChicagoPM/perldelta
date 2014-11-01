
use feature qw( say );
package Foo;
sub new { bless {}, "Foo" }
sub DESTROY {
    eval { die "It's clobberin' time!" };
}

package main;
eval {
    my $foo = Foo->new;
    die "Avengers Assemble!";
};
say $@;
