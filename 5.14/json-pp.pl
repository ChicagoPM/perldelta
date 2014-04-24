
use feature qw( say );
use JSON::PP;

my $json = '{ "foo": "bar", "baz": "fuzz" }';
my $hash = JSON::PP->new->decode( $json );

say "foo: " . $hash->{foo};

