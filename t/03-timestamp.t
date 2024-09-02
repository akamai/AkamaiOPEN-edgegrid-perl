#!perl -T
#
# for more info visit https://developer.akamai.com
#

use 5.006;
use strict;
use warnings FATAL => 'all';
use Test::More;

use Akamai::Edgegrid;

plan tests=>1;

like(
    Akamai::Edgegrid::_eg_timestamp(), 
    qr/
        ^
            \d{4} # year
            [0-1][0-9] # month
            [0-3][0-9] # day
            T     
            [0-2][0-9] # hour
            :
            [0-5][0-9] # minute
            :
            [0-5][0-9] # second
            \+0000 # timezone
        $
    /x,
    'timestamp structure'
);
