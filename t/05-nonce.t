#!perl -T
#
# for more info visit https://developer.akamai.com
#

use 5.006;
use strict;
use warnings FATAL => 'all';
use Test::More;

use Akamai::Edgegrid;

# this isn't exhaustive, but it gets coverage of the nonce code
my $count = 100;
plan tests=>$count;

my %nonces = ();
while ($count--) {
    my $n = Akamai::Edgegrid::_new_nonce();
    ok(!exists $nonces{$n});
    $nonces{$n} = $n;
}
