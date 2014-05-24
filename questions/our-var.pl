
use feature qw( say );
our $foo = "foo";

sub foo {
    my ( $foo ) = "f00";
    say $foo;
    {
        our $foo;
        say $foo;
    }
}

foo();
