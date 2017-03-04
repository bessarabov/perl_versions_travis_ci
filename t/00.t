use strict;
use warnings FATAL => 'all';

use Test::More;

sub main_in_test {
    pass('Loaded ok');

    done_testing();
}
main_in_test();
