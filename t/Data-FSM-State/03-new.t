use strict;
use warnings;

use Data::FSM::State;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = Data::FSM::State->new;
isa_ok($obj, 'Data::FSM::State');
