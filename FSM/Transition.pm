package Data::FSM::Transition;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils 0.28 qw(check_code check_isa check_number_id);

our $VERSION = 0.01;

has callback => (
	is => 'ro',
);

has from => (
	is => 'ro',
);

has id => (
	is => 'ro',
);

has to => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check callback.
	check_code($self, 'callback');

	# Check from.
	check_isa($self, 'from', 'Data::FSM::State');

	# Check id.
	check_number_id($self, 'id');

	# Check to.
	check_isa($self, 'to', 'Data::FSM::State');

	return;
}

1;
