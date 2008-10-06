package CPANRPM::Distribution;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("distribution");
__PACKAGE__->add_columns(
  "id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "distname",
  { data_type => "VARCHAR", default_value => "", is_nullable => 0, size => 200 },
  "spec",
  { data_type => "VARCHAR", default_value => "", is_nullable => 0, size => 200 },
  "rpmname",
  { data_type => "VARCHAR", default_value => "", is_nullable => 0, size => 200 },
  "active",
  { data_type => "TINYINT", default_value => 1, is_nullable => 0, size => 1 },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->has_many(
  "builds",
  "CPANRPM::Build",
  { "foreign.distribution" => "self.id" },
);


# Created by DBIx::Class::Schema::Loader v0.04005 @ 2008-10-05 15:28:03
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Fm/8WK4k+elfyqg0F72xcA


# You can replace this text with custom content, and it will be preserved on regeneration
1;
