package Data::FSM::Transition;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils 0.28 qw(check_code check_isa check_length check_required);
use Mo::utils::Number qw(check_positive_natural);

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

has name => (
	is => 'ro',
);

has to => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check 'callback'.
	check_code($self, 'callback');

	# Check 'from'.
	check_required($self, 'from');
	check_isa($self, 'from', 'Data::FSM::State');

	# Check 'id'.
	check_positive_natural($self, 'id');

	# Check 'name'.
	check_length($self, 'name', 100);

	# Check 'to'.
	check_required($self, 'to');
	check_isa($self, 'to', 'Data::FSM::State');

	return;
}

1;
