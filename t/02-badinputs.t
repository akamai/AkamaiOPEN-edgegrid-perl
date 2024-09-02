#!perl -T
#
# for more info visit https://developer.akamai.com
#

use 5.006;
use strict;
use warnings FATAL => 'all';
use Test::More;

use Akamai::Edgegrid;

plan tests => 4;

my @required = qw(client_token client_secret access_token);

sub test_missing {
    my $missing = shift;
    my %args = map { $_ => 'xxx' } grep { $_ ne $missing } @required;
    eval {
        new Akamai::Edgegrid(%args); 
    };
    if ($@) {
        my $msg = $@;
        like($msg, qr/^missing required argument $missing/, "missing $missing");
    }
}

eval {
    new Akamai::Edgegrid();
};
if ($@) {
    my $msg = $@;
    like($msg, qr/^missing required argument/, 'missing all');
}

for my $a (@required) {
    test_missing($a);
}
