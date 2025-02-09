package Data::FSM;

use strict;
use warnings;

use Mo qw(build default is);
use Mo::utils 0.21 qw(check_array_object);

our $VERSION = 0.01;

has states => (
	default => [],
	is => 'ro',
);

has transitions => (
	default => [],
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check states.
	check_array_object($self, 'states', 'Data::FSM::State');

	# Check transitions.
	check_array_object($self, 'transitions', 'Data::FSM::Transition');

	return;
}

1;
