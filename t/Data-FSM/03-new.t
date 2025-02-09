use strict;
use warnings;

use Data::FSM;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = Data::FSM->new;
isa_ok($obj, 'Data::FSM');
