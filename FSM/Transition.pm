package Data::FSM::Transition;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils 0.28 qw(check_number_id);

our $VERSION = 0.01;

has id => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	return;
}

1;
