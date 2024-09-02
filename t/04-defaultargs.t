#!perl -T
#
# for more info visit https://developer.akamai.com
#

use 5.006;
use strict;
use warnings FATAL => 'all';
use Test::More;

use Akamai::Edgegrid;

plan tests=>2;

my $ua = new Akamai::Edgegrid(client_token=>'xxx', client_secret=>'xxx',
    access_token=>'xxx');

is($ua->{max_body},131072 , 'default max_body=131072');
is_deeply($ua->{headers_to_sign}, [], 'default headers_to_sign=[]');
