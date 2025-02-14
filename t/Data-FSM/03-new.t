use strict;
use warnings;

use Data::FSM;
use English;
use Error::Pure::Utils qw(clean);
use Test::More 'tests' => 5;
use Test::NoWarnings;

# Test.
my $obj = Data::FSM->new;
isa_ok($obj, 'Data::FSM');

# Test.
eval {
	Data::FSM->new(
		'id' => 'bad',
	);
};
is($EVAL_ERROR, "Parameter 'id' must be a natural number.\n",
	"Parameter 'id' must be a natural number (bad).");
clean();

# Test.
eval {
	Data::FSM->new(
		'states' => 'bad',
	);
};
is($EVAL_ERROR, "Parameter 'states' must be a array.\n",
	"Parameter 'states' must be a array (bad).");
clean();

# Test.
eval {
	Data::FSM->new(
		'transitions' => 'bad',
	);
};
is($EVAL_ERROR, "Parameter 'transitions' must be a array.\n",
	"Parameter 'transitions' must be a array (bad).");
clean();
