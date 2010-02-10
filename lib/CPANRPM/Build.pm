package CPANRPM::Build;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("build");
__PACKAGE__->add_columns(
  "id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "distribution",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "build_env",
  { data_type => "CHAR", default_value => undef, is_nullable => 1, size => 20 },
  "return_code",
  { data_type => "TINYINT", default_value => undef, is_nullable => 1, size => 1 },
  "start",
  { data_type => "DATETIME", default_value => undef, is_nullable => 0, size => 19 },
  "end",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 1,
    size => 19,
  },
  "version",
  { data_type => "VARCHAR", default_value => "", is_nullable => 0, size => 20 },
  "log",
  {
    data_type => "TEXT",
    default_value => undef,
    is_nullable => 1,
    size => 65535,
  },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->belongs_to(
  "distribution",
  "CPANRPM::Distribution",
  { id => "distribution" },
);


# Created by DBIx::Class::Schema::Loader v0.04005 @ 2008-10-05 15:28:03
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:3nCBb5szuzKnIzweVKsCoA


# You can replace this text with custom content, and it will be preserved on regeneration
1;
