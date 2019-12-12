package Text::CSV_XS::TSV;

# AUTHORITY
# DATE
# DIST
# VERSION

use strict;
use warnings;

use parent 'Text::CSV_XS';

sub new {
    my $class = shift;

    my $opts = $_[0] ? { %{$_[0]} } : {};
    $opts->{sep_char}    = "\t"  unless exists $opts->{sep_char};
    $opts->{quote_char}  = undef unless exists $opts->{quote_char};
    $opts->{escape_char} = undef unless exists $opts->{escape_char};

    $class->SUPER::new($opts);
}

1;
#ABSTRACT: Set Text::CSV_XS default options to parse TSV

=head1 SYNOPSIS

Use like you would use L<Text::CSV_XS> with the object interface:

 use Text::CSV_XS::TSV;
 my $csv = Text::CSV_XS::TSV->new({binary=>1});
 # ...


=head1 DESCRIPTION

This class is a simple subclass of L<Text::CSV_XS> to set the default of these
options (if unspecified), suitable for parsing TSV (tab-separated values) files:

=over

=item * sep_char

To C<"\t">.

=item * quote_char

To C<undef>.

=item * escape_char

To C<undef>.

=back


=head1 SEE ALSO

L<Text::CSV_XS>

=cut
