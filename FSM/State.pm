package Data::FSM::State;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils 0.28 qw(check_bool check_length);
use Mo::utils::Number qw(check_positive_natural);

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
	check_positive_natural($self, 'id');

	# Check inital.
	if (! defined $self->{'initial'}) {
		$self->{'initial'} = 0;
	}
	check_bool($self, 'initial');

	# Check name.
	check_length($self, 'name', 100);

	return;
}

1;
