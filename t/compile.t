use strict;
use warnings;

use Test2::Bundle::Extended;
use Test2::Plugin::NoWarnings;
use Test2::Require::Module 'IPC::Run3';

use IPC::Run3 qw( run3 );

my $code = <<'EOF';
use strict;
use warnings;

# We need to load Test::Builder to trigger the weird failure case.
package Foo;
use Test::Builder;

package main;

use Test2::Bundle::Extended;
use Test2::Plugin::NoWarnings;

# It we name the variable "$array" we don't get the broken output. Perl is
# weird.
splice @$arr, 3 1;
my $arr = [qw/a b c/];
ok( 1, 'abc' );

done_testing();
EOF

my ( $stdout, $stderr );
run3(
    [ $^X, '-e', $code ],
    \undef,
    \$stdout,
    \$stderr,
);

like(
    $stderr,
    qr/Global symbol/,
    'compile time warning is not hidden by using Test2::Plugin::NoWarnings'
);

done_testing();

