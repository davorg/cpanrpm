package CPANRPM::Result::Build;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 NAME

CPANRPM::Result::Build

=cut

__PACKAGE__->table("build");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_nullable: 0

=head2 distribution

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 build_env

  data_type: 'char'
  is_nullable: 1
  size: 20

=head2 return_code

  data_type: 'tinyint'
  is_nullable: 1

=head2 start

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 end

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 version

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 20

=head2 log

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_nullable => 0 },
  "distribution",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "build_env",
  { data_type => "char", is_nullable => 1, size => 20 },
  "return_code",
  { data_type => "tinyint", is_nullable => 1 },
  "start",
  {
    data_type => "datetime",
    "datetime_undef_if_invalid" => 1,
    is_nullable => 0,
  },
  "end",
  {
    data_type => "datetime",
    "datetime_undef_if_invalid" => 1,
    is_nullable => 1,
  },
  "version",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 20 },
  "log",
  { data_type => "text", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 distribution

Type: belongs_to

Related object: L<CPANRPM::Result::Distribution>

=cut

__PACKAGE__->belongs_to(
  "distribution",
  "CPANRPM::Result::Distribution",
  { id => "distribution" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-03-26 20:49:52
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:oKSL3KvLxtxHvNi8/OnQnQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
