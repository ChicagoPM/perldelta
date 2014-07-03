
use feature qw( say );
my $in = "foo: bar\nbaz: biz";

my $old_parse = qr{
    ([^:\s]+)
    :
    \s*
    ([^\n]+)
}x;

while ( $in =~ /$old_parse/g ) {
    say "Key: $1";
    say "Value: $2";
}

my $new_parse = qr{
    (?<key>[^:\s]+)
    :
    \s*
    (?<value>[^\n]+)
}x;

while ( $in =~ /$new_parse/g ) {
    say "Key: $+{key}";
    say "Value: $+{value}";
}
