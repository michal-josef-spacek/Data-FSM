package Data::FSM::Utils;

use base qw(Exporter);
use strict;
use warnings;

use Error::Pure qw(err);
use List::Util 1.33 qw(none);
use Mo::utils 0.06 qw(check_array);
use Readonly;

Readonly::Array our @EXPORT_OK => qw(check_transition_objects);

our $VERSION = 0.01;

sub check_transition_objects {
	my ($self, $key, $objects_ar) = @_;

	if (! exists $self->{$key}) {
		return;
	}

	check_array($self, $key);

	foreach my $obj (@{$self->{$key}}) {
		if (none { $obj->from eq $_ } @{$objects_ar}) {
			err "Parameter '$key' contains object which has 'from' object which isn't in defined objects.",
				'Reference', (ref $obj->from),
			;
		}
		if (none { $obj->to eq $_ } @{$objects_ar}) {
			err "Parameter '$key' contains object which has 'to' object which isn't in defined objects.",
				'Reference', (ref $obj->to),
			;
		}
	}

	return;
}

1;
