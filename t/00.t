use strict;
use warnings FATAL => 'all';

use Test::More;

sub main_in_test {
    pass('Loaded ok');

    my $tpv = $ENV{TRAVIS_PERL_VERSION};
    $tpv = 'undef' if not defined $tpv;

    note('$ENV{TRAVIS_PERL_VERSION} = ' . $tpv);
    note('$PERL_VERSION = ' . $^V);
    note('$OLD_PERL_VERSION = ' . $]);

    note(`perlbrew list`);

    done_testing();
}
main_in_test();
