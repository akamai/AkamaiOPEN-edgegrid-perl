use 5.006;
use strict;
use warnings FATAL => 'all';
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME             => 'Akamai::Edgegrid',
    AUTHOR           => q{Jonathan Landis <jlandis@akamai.com>},
    VERSION_FROM     => 'lib/Akamai/Edgegrid.pm',
    ABSTRACT         => 'Akamai {OPEN} Edgegrid Authentication',
    DISTNAME         => 'edgegrid-perl',
    LICENSE          => 'Apache_2_0',
    PL_FILES         => {},
    MIN_PERL_VERSION => 5.006,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    BUILD_REQUIRES => {
        'Test::More' => 0,
	'Test::Pod::Coverage' => 0,
	'Test::Pod' => 1.22,
        'JSON' => 0
    },
    PREREQ_PM => {
        'LWP' => 5.834,
	'Data::UUID' => 0
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'edgegrid-perl-*' },
);
