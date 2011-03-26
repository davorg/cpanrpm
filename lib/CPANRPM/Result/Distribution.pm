package CPANRPM::Result::Distribution;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 NAME

CPANRPM::Result::Distribution

=cut

__PACKAGE__->table("distribution");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 distname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 200

=head2 spec

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 200

=head2 rpmname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 200

=head2 active

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "distname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 200 },
  "spec",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 200 },
  "rpmname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 200 },
  "active",
  { data_type => "tinyint", default_value => 1, is_nullable => 0 },
);
__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 builds

Type: has_many

Related object: L<CPANRPM::Result::Build>

=cut

__PACKAGE__->has_many(
  "builds",
  "CPANRPM::Result::Build",
  { "foreign.distribution" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-03-26 21:43:50
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:WqVqxmsvHQYU1jH7t52f3w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
