
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
    my sub new {
        say "hidden new()";
        our sub new;
        new();
    }
    new();
}

say '-- old()';
old();
say '-- new()';
new();
say '-- hide()';
hide();
