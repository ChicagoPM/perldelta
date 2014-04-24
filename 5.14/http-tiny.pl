
use feature qw( say );
use HTTP::Tiny;

my $resp = HTTP::Tiny->new->get( 'http://example.com' );
say $resp->{content};
