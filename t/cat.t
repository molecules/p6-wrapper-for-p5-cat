#!/bin/env perl6
use Test;

constant GREETING = 'Hello world!';
my $filename = 'test.txt';
spurt($filename, GREETING);

my $p5 = qqx{ resources/scripts/cat.pl $filename };
my $p6 = qqx{ bin/run_cat              $filename };

is $p6, $p5, 'wrapped script gives same result as original';

is $p6, GREETING, "output is '{GREETING}' as expected";

unlink $filename;

done-testing;
