package CPANRPM;

use strict;
use warnings;

use base 'DBIx::Class::Schema';

our $VERSION = 0.01;

__PACKAGE__->load_classes;


# Created by DBIx::Class::Schema::Loader v0.04005 @ 2008-10-05 15:28:03
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:4OJKBP9qgOeMhVlr9QHpZA

__PACKAGE__->load_components(qw(Schema::Versioned));
__PACKAGE__->upgrade_directory('./upgrades');

# You can replace this text with custom content, and it will be preserved on regeneration
1;
