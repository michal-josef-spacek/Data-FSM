package Data::FSM::Transition;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils 0.28 qw(check_number_id);

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

	# Check id.
	check_number_id($self, 'id');

	return;
}

1;
