use utf8;
package Database::Schema::Result::Film;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Database::Schema::Result::Film

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<film>

=cut

__PACKAGE__->table("film");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 title

  data_type: 'text'
  is_nullable: 1

=head2 genre

  data_type: 'text'
  is_nullable: 1

=head2 year

  data_type: 'date'
  is_nullable: 1

=head2 imdb_id

  data_type: 'text'
  is_nullable: 1

=head2 summary

  data_type: 'text'
  is_nullable: 1

=head2 owned

  data_type: 'boolean'
  is_nullable: 1

=head2 watched

  data_type: 'boolean'
  is_nullable: 1

=head2 rating

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "title",
  { data_type => "text", is_nullable => 1 },
  "genre",
  { data_type => "text", is_nullable => 1 },
  "year",
  { data_type => "date", is_nullable => 1 },
  "imdb_id",
  { data_type => "text", is_nullable => 1 },
  "summary",
  { data_type => "text", is_nullable => 1 },
  "owned",
  { data_type => "boolean", is_nullable => 1 },
  "watched",
  { data_type => "boolean", is_nullable => 1 },
  "rating",
  { data_type => "integer", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07033 @ 2013-02-23 15:23:34
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:GC/ibUNIAGC9v/3R+HVm3A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
