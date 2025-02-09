package Data::FSM::State;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils 0.28 qw(check_bool check_number_id);

our $VERSION = 0.01;

has id => (
	is => 'ro',
);

has initial => (
	is => 'ro',
);

has name => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check id.
	check_number_id($self, 'id');

	# Check inital.
	if (! defined $self->{'inital'}) {
		$self->{'inital'} = 0;
	}
	check_bool($self, 'inital');

	# Check name.
	# TODO

	return;
}

1;
