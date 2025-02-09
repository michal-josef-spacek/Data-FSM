package Data::FSM;

use strict;
use warnings;

use Mo qw(build default is);
use Mo::utils 0.28 qw(check_array_object check_number_id);

our $VERSION = 0.01;

has id => (
	is => 'ro',
);

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

	# Check id.
	check_number_id($self, 'id');

	# Check states.
	check_array_object($self, 'states', 'Data::FSM::State');

	# Check transitions.
	check_array_object($self, 'transitions', 'Data::FSM::Transition');
	# TODO Check states in transitions.

	return;
}

1;
