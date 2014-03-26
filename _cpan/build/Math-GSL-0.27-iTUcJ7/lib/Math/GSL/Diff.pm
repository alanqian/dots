# This file was automatically generated by SWIG (http://www.swig.org).
# Version 2.0.4
#
# Do not make changes to this file unless you know what you are doing--modify
# the SWIG interface file instead.

package Math::GSL::Diff;
use base qw(Exporter);
use base qw(DynaLoader);
package Math::GSL::Diffc;
bootstrap Math::GSL::Diff;
package Math::GSL::Diff;
@EXPORT = qw();

# ---------- BASE METHODS -------------

package Math::GSL::Diff;

sub TIEHASH {
    my ($classname,$obj) = @_;
    return bless $obj, $classname;
}

sub CLEAR { }

sub FIRSTKEY { }

sub NEXTKEY { }

sub FETCH {
    my ($self,$field) = @_;
    my $member_func = "swig_${field}_get";
    $self->$member_func();
}

sub STORE {
    my ($self,$field,$newval) = @_;
    my $member_func = "swig_${field}_set";
    $self->$member_func($newval);
}

sub this {
    my $ptr = shift;
    return tied(%$ptr);
}


# ------- FUNCTION WRAPPERS --------

package Math::GSL::Diff;

*gsl_diff_central = *Math::GSL::Diffc::gsl_diff_central;
*gsl_diff_backward = *Math::GSL::Diffc::gsl_diff_backward;
*gsl_diff_forward = *Math::GSL::Diffc::gsl_diff_forward;

# ------- VARIABLE STUBS --------

package Math::GSL::Diff;

*GSL_MAJOR_VERSION = *Math::GSL::Diffc::GSL_MAJOR_VERSION;
*GSL_MINOR_VERSION = *Math::GSL::Diffc::GSL_MINOR_VERSION;
*GSL_POSZERO = *Math::GSL::Diffc::GSL_POSZERO;
*GSL_NEGZERO = *Math::GSL::Diffc::GSL_NEGZERO;

@EXPORT_OK = qw/
               gsl_diff_central 
               gsl_diff_backward
               gsl_diff_forward
             /;
%EXPORT_TAGS = ( all => [ @EXPORT_OK ] );

__END__

=head1 NAME

Math::GSL::Diff - Numerical differentiation routines

=head1 SYNOPSIS

    use Math::GSL::Diff qw/:all/;

=head1 DESCRIPTION

Here is a list of all the functions included in this module :

=over

=item C<gsl_diff_central>

=item C<gsl_diff_backward>

=item C<gsl_diff_forward>

=back

=head1 EXAMPLES

=head1 AUTHORS

Jonathan "Duke" Leto <jonathan@leto.net> and Thierry Moisan <thierry.moisan@gmail.com>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2008-2011 Jonathan "Duke" Leto and Thierry Moisan

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut
1;
