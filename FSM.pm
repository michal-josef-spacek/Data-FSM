package Data::FSM;

use strict;
use warnings;

use Data::FSM::Utils qw(check_transition_objects);
use Mo qw(build default is);
use Mo::utils 0.28 qw(check_array_object);
use Mo::utils::Number qw(check_positive_natural);

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
	check_positive_natural($self, 'id');

	# Check states.
	check_array_object($self, 'states', 'Data::FSM::State', 'State');

	# Check transitions.
	check_array_object($self, 'transitions', 'Data::FSM::Transition', 'Transition');
	check_transition_objects($self, 'transitions', $self->states);

	return;
}

1;
