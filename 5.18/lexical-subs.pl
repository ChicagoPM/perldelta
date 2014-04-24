
use feature qw( say lexical_subs );

sub old {
    say "old()";
    my $inner = sub {
        say "inner()";
    };
    $inner->();
}

sub new {
    say "new()";
    my sub inner {
        say "inner()";
    }
    inner();
}

sub hide {
    state sub new {
        say "hidden new()";
    }
    new();
}

old();
new();
hide();
