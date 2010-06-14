#!/usr/bin/env perl

use strict;
use warnings;

use Test::Most 'no_plan';

use App::PAUSE::cleanup;

ok( 1 );

cmp_deeply( [ App::PAUSE::cleanup->expand_filelist( [qw/
    A-1.0
    A-2.0
    A-3
    B-4.0_1
    B-5_2
/] ) ], [qw/
    A-1.0.meta
    A-1.0.readme
    A-1.0.tar.gz
    A-2.0.meta
    A-2.0.readme
    A-2.0.tar.gz
    A-3.meta
    A-3.readme
    A-3.tar.gz
    B-4.0_1.tar.gz
    B-5_2.tar.gz
/]
);
