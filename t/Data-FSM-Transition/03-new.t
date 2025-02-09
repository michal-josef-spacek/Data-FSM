use strict;
use warnings;

use Data::FSM::Transition;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = Data::FSM::Transition->new;
isa_ok($obj, 'Data::FSM::Transition');
