# This file was automatically generated by SWIG (http://www.swig.org).
# Version 2.0.4
#
# Do not make changes to this file unless you know what you are doing--modify
# the SWIG interface file instead.

package Math::GSL::Multimin;
use base qw(Exporter);
use base qw(DynaLoader);
package Math::GSL::Multiminc;
bootstrap Math::GSL::Multimin;
package Math::GSL::Multimin;
@EXPORT = qw();

# ---------- BASE METHODS -------------

package Math::GSL::Multimin;

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

package Math::GSL::Multimin;

*gsl_multimin_diff = *Math::GSL::Multiminc::gsl_multimin_diff;
*gsl_multimin_fminimizer_alloc = *Math::GSL::Multiminc::gsl_multimin_fminimizer_alloc;
*gsl_multimin_fminimizer_set = *Math::GSL::Multiminc::gsl_multimin_fminimizer_set;
*gsl_multimin_fminimizer_free = *Math::GSL::Multiminc::gsl_multimin_fminimizer_free;
*gsl_multimin_fminimizer_name = *Math::GSL::Multiminc::gsl_multimin_fminimizer_name;
*gsl_multimin_fminimizer_iterate = *Math::GSL::Multiminc::gsl_multimin_fminimizer_iterate;
*gsl_multimin_fminimizer_x = *Math::GSL::Multiminc::gsl_multimin_fminimizer_x;
*gsl_multimin_fminimizer_minimum = *Math::GSL::Multiminc::gsl_multimin_fminimizer_minimum;
*gsl_multimin_fminimizer_size = *Math::GSL::Multiminc::gsl_multimin_fminimizer_size;
*gsl_multimin_test_gradient = *Math::GSL::Multiminc::gsl_multimin_test_gradient;
*gsl_multimin_test_size = *Math::GSL::Multiminc::gsl_multimin_test_size;
*gsl_multimin_fdfminimizer_alloc = *Math::GSL::Multiminc::gsl_multimin_fdfminimizer_alloc;
*gsl_multimin_fdfminimizer_set = *Math::GSL::Multiminc::gsl_multimin_fdfminimizer_set;
*gsl_multimin_fdfminimizer_free = *Math::GSL::Multiminc::gsl_multimin_fdfminimizer_free;
*gsl_multimin_fdfminimizer_name = *Math::GSL::Multiminc::gsl_multimin_fdfminimizer_name;
*gsl_multimin_fdfminimizer_iterate = *Math::GSL::Multiminc::gsl_multimin_fdfminimizer_iterate;
*gsl_multimin_fdfminimizer_restart = *Math::GSL::Multiminc::gsl_multimin_fdfminimizer_restart;
*gsl_multimin_fdfminimizer_x = *Math::GSL::Multiminc::gsl_multimin_fdfminimizer_x;
*gsl_multimin_fdfminimizer_dx = *Math::GSL::Multiminc::gsl_multimin_fdfminimizer_dx;
*gsl_multimin_fdfminimizer_gradient = *Math::GSL::Multiminc::gsl_multimin_fdfminimizer_gradient;
*gsl_multimin_fdfminimizer_minimum = *Math::GSL::Multiminc::gsl_multimin_fdfminimizer_minimum;

############# Class : Math::GSL::Multimin::gsl_multimin_function_struct ##############

package Math::GSL::Multimin::gsl_multimin_function_struct;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( Math::GSL::Multimin );
%OWNER = ();
%ITERATORS = ();
*swig_f_get = *Math::GSL::Multiminc::gsl_multimin_function_struct_f_get;
*swig_f_set = *Math::GSL::Multiminc::gsl_multimin_function_struct_f_set;
*swig_n_get = *Math::GSL::Multiminc::gsl_multimin_function_struct_n_get;
*swig_n_set = *Math::GSL::Multiminc::gsl_multimin_function_struct_n_set;
*swig_params_get = *Math::GSL::Multiminc::gsl_multimin_function_struct_params_get;
*swig_params_set = *Math::GSL::Multiminc::gsl_multimin_function_struct_params_set;
sub new {
    my $pkg = shift;
    my $self = Math::GSL::Multiminc::new_gsl_multimin_function_struct(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Math::GSL::Multiminc::delete_gsl_multimin_function_struct($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : Math::GSL::Multimin::gsl_multimin_function_fdf_struct ##############

package Math::GSL::Multimin::gsl_multimin_function_fdf_struct;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( Math::GSL::Multimin );
%OWNER = ();
%ITERATORS = ();
*swig_f_get = *Math::GSL::Multiminc::gsl_multimin_function_fdf_struct_f_get;
*swig_f_set = *Math::GSL::Multiminc::gsl_multimin_function_fdf_struct_f_set;
*swig_df_get = *Math::GSL::Multiminc::gsl_multimin_function_fdf_struct_df_get;
*swig_df_set = *Math::GSL::Multiminc::gsl_multimin_function_fdf_struct_df_set;
*swig_fdf_get = *Math::GSL::Multiminc::gsl_multimin_function_fdf_struct_fdf_get;
*swig_fdf_set = *Math::GSL::Multiminc::gsl_multimin_function_fdf_struct_fdf_set;
*swig_n_get = *Math::GSL::Multiminc::gsl_multimin_function_fdf_struct_n_get;
*swig_n_set = *Math::GSL::Multiminc::gsl_multimin_function_fdf_struct_n_set;
*swig_params_get = *Math::GSL::Multiminc::gsl_multimin_function_fdf_struct_params_get;
*swig_params_set = *Math::GSL::Multiminc::gsl_multimin_function_fdf_struct_params_set;
sub new {
    my $pkg = shift;
    my $self = Math::GSL::Multiminc::new_gsl_multimin_function_fdf_struct(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Math::GSL::Multiminc::delete_gsl_multimin_function_fdf_struct($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : Math::GSL::Multimin::gsl_multimin_fminimizer_type ##############

package Math::GSL::Multimin::gsl_multimin_fminimizer_type;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( Math::GSL::Multimin );
%OWNER = ();
%ITERATORS = ();
*swig_name_get = *Math::GSL::Multiminc::gsl_multimin_fminimizer_type_name_get;
*swig_name_set = *Math::GSL::Multiminc::gsl_multimin_fminimizer_type_name_set;
*swig_size_get = *Math::GSL::Multiminc::gsl_multimin_fminimizer_type_size_get;
*swig_size_set = *Math::GSL::Multiminc::gsl_multimin_fminimizer_type_size_set;
*swig_alloc_get = *Math::GSL::Multiminc::gsl_multimin_fminimizer_type_alloc_get;
*swig_alloc_set = *Math::GSL::Multiminc::gsl_multimin_fminimizer_type_alloc_set;
*swig_set_get = *Math::GSL::Multiminc::gsl_multimin_fminimizer_type_set_get;
*swig_set_set = *Math::GSL::Multiminc::gsl_multimin_fminimizer_type_set_set;
*swig_iterate_get = *Math::GSL::Multiminc::gsl_multimin_fminimizer_type_iterate_get;
*swig_iterate_set = *Math::GSL::Multiminc::gsl_multimin_fminimizer_type_iterate_set;
*swig_free_get = *Math::GSL::Multiminc::gsl_multimin_fminimizer_type_free_get;
*swig_free_set = *Math::GSL::Multiminc::gsl_multimin_fminimizer_type_free_set;
sub new {
    my $pkg = shift;
    my $self = Math::GSL::Multiminc::new_gsl_multimin_fminimizer_type(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Math::GSL::Multiminc::delete_gsl_multimin_fminimizer_type($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : Math::GSL::Multimin::gsl_multimin_fminimizer ##############

package Math::GSL::Multimin::gsl_multimin_fminimizer;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( Math::GSL::Multimin );
%OWNER = ();
%ITERATORS = ();
*swig_type_get = *Math::GSL::Multiminc::gsl_multimin_fminimizer_type_get;
*swig_type_set = *Math::GSL::Multiminc::gsl_multimin_fminimizer_type_set;
*swig_f_get = *Math::GSL::Multiminc::gsl_multimin_fminimizer_f_get;
*swig_f_set = *Math::GSL::Multiminc::gsl_multimin_fminimizer_f_set;
*swig_fval_get = *Math::GSL::Multiminc::gsl_multimin_fminimizer_fval_get;
*swig_fval_set = *Math::GSL::Multiminc::gsl_multimin_fminimizer_fval_set;
*swig_x_get = *Math::GSL::Multiminc::gsl_multimin_fminimizer_x_get;
*swig_x_set = *Math::GSL::Multiminc::gsl_multimin_fminimizer_x_set;
*swig_size_get = *Math::GSL::Multiminc::gsl_multimin_fminimizer_size_get;
*swig_size_set = *Math::GSL::Multiminc::gsl_multimin_fminimizer_size_set;
*swig_state_get = *Math::GSL::Multiminc::gsl_multimin_fminimizer_state_get;
*swig_state_set = *Math::GSL::Multiminc::gsl_multimin_fminimizer_state_set;
sub new {
    my $pkg = shift;
    my $self = Math::GSL::Multiminc::new_gsl_multimin_fminimizer(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Math::GSL::Multiminc::delete_gsl_multimin_fminimizer($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : Math::GSL::Multimin::gsl_multimin_fdfminimizer_type ##############

package Math::GSL::Multimin::gsl_multimin_fdfminimizer_type;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( Math::GSL::Multimin );
%OWNER = ();
%ITERATORS = ();
*swig_name_get = *Math::GSL::Multiminc::gsl_multimin_fdfminimizer_type_name_get;
*swig_name_set = *Math::GSL::Multiminc::gsl_multimin_fdfminimizer_type_name_set;
*swig_size_get = *Math::GSL::Multiminc::gsl_multimin_fdfminimizer_type_size_get;
*swig_size_set = *Math::GSL::Multiminc::gsl_multimin_fdfminimizer_type_size_set;
*swig_alloc_get = *Math::GSL::Multiminc::gsl_multimin_fdfminimizer_type_alloc_get;
*swig_alloc_set = *Math::GSL::Multiminc::gsl_multimin_fdfminimizer_type_alloc_set;
*swig_set_get = *Math::GSL::Multiminc::gsl_multimin_fdfminimizer_type_set_get;
*swig_set_set = *Math::GSL::Multiminc::gsl_multimin_fdfminimizer_type_set_set;
*swig_iterate_get = *Math::GSL::Multiminc::gsl_multimin_fdfminimizer_type_iterate_get;
*swig_iterate_set = *Math::GSL::Multiminc::gsl_multimin_fdfminimizer_type_iterate_set;
*swig_restart_get = *Math::GSL::Multiminc::gsl_multimin_fdfminimizer_type_restart_get;
*swig_restart_set = *Math::GSL::Multiminc::gsl_multimin_fdfminimizer_type_restart_set;
*swig_free_get = *Math::GSL::Multiminc::gsl_multimin_fdfminimizer_type_free_get;
*swig_free_set = *Math::GSL::Multiminc::gsl_multimin_fdfminimizer_type_free_set;
sub new {
    my $pkg = shift;
    my $self = Math::GSL::Multiminc::new_gsl_multimin_fdfminimizer_type(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Math::GSL::Multiminc::delete_gsl_multimin_fdfminimizer_type($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : Math::GSL::Multimin::gsl_multimin_fdfminimizer ##############

package Math::GSL::Multimin::gsl_multimin_fdfminimizer;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( Math::GSL::Multimin );
%OWNER = ();
%ITERATORS = ();
*swig_type_get = *Math::GSL::Multiminc::gsl_multimin_fdfminimizer_type_get;
*swig_type_set = *Math::GSL::Multiminc::gsl_multimin_fdfminimizer_type_set;
*swig_fdf_get = *Math::GSL::Multiminc::gsl_multimin_fdfminimizer_fdf_get;
*swig_fdf_set = *Math::GSL::Multiminc::gsl_multimin_fdfminimizer_fdf_set;
*swig_f_get = *Math::GSL::Multiminc::gsl_multimin_fdfminimizer_f_get;
*swig_f_set = *Math::GSL::Multiminc::gsl_multimin_fdfminimizer_f_set;
*swig_x_get = *Math::GSL::Multiminc::gsl_multimin_fdfminimizer_x_get;
*swig_x_set = *Math::GSL::Multiminc::gsl_multimin_fdfminimizer_x_set;
*swig_gradient_get = *Math::GSL::Multiminc::gsl_multimin_fdfminimizer_gradient_get;
*swig_gradient_set = *Math::GSL::Multiminc::gsl_multimin_fdfminimizer_gradient_set;
*swig_dx_get = *Math::GSL::Multiminc::gsl_multimin_fdfminimizer_dx_get;
*swig_dx_set = *Math::GSL::Multiminc::gsl_multimin_fdfminimizer_dx_set;
*swig_state_get = *Math::GSL::Multiminc::gsl_multimin_fdfminimizer_state_get;
*swig_state_set = *Math::GSL::Multiminc::gsl_multimin_fdfminimizer_state_set;
sub new {
    my $pkg = shift;
    my $self = Math::GSL::Multiminc::new_gsl_multimin_fdfminimizer(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Math::GSL::Multiminc::delete_gsl_multimin_fdfminimizer($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


# ------- VARIABLE STUBS --------

package Math::GSL::Multimin;

*GSL_MAJOR_VERSION = *Math::GSL::Multiminc::GSL_MAJOR_VERSION;
*GSL_MINOR_VERSION = *Math::GSL::Multiminc::GSL_MINOR_VERSION;
*GSL_POSZERO = *Math::GSL::Multiminc::GSL_POSZERO;
*GSL_NEGZERO = *Math::GSL::Multiminc::GSL_NEGZERO;

my %__gsl_multimin_fdfminimizer_steepest_descent_hash;
tie %__gsl_multimin_fdfminimizer_steepest_descent_hash,"Math::GSL::Multimin::gsl_multimin_fdfminimizer_type", $Math::GSL::Multiminc::gsl_multimin_fdfminimizer_steepest_descent;
$gsl_multimin_fdfminimizer_steepest_descent= \%__gsl_multimin_fdfminimizer_steepest_descent_hash;
bless $gsl_multimin_fdfminimizer_steepest_descent, Math::GSL::Multimin::gsl_multimin_fdfminimizer_type;

my %__gsl_multimin_fdfminimizer_conjugate_pr_hash;
tie %__gsl_multimin_fdfminimizer_conjugate_pr_hash,"Math::GSL::Multimin::gsl_multimin_fdfminimizer_type", $Math::GSL::Multiminc::gsl_multimin_fdfminimizer_conjugate_pr;
$gsl_multimin_fdfminimizer_conjugate_pr= \%__gsl_multimin_fdfminimizer_conjugate_pr_hash;
bless $gsl_multimin_fdfminimizer_conjugate_pr, Math::GSL::Multimin::gsl_multimin_fdfminimizer_type;

my %__gsl_multimin_fdfminimizer_conjugate_fr_hash;
tie %__gsl_multimin_fdfminimizer_conjugate_fr_hash,"Math::GSL::Multimin::gsl_multimin_fdfminimizer_type", $Math::GSL::Multiminc::gsl_multimin_fdfminimizer_conjugate_fr;
$gsl_multimin_fdfminimizer_conjugate_fr= \%__gsl_multimin_fdfminimizer_conjugate_fr_hash;
bless $gsl_multimin_fdfminimizer_conjugate_fr, Math::GSL::Multimin::gsl_multimin_fdfminimizer_type;

my %__gsl_multimin_fdfminimizer_vector_bfgs_hash;
tie %__gsl_multimin_fdfminimizer_vector_bfgs_hash,"Math::GSL::Multimin::gsl_multimin_fdfminimizer_type", $Math::GSL::Multiminc::gsl_multimin_fdfminimizer_vector_bfgs;
$gsl_multimin_fdfminimizer_vector_bfgs= \%__gsl_multimin_fdfminimizer_vector_bfgs_hash;
bless $gsl_multimin_fdfminimizer_vector_bfgs, Math::GSL::Multimin::gsl_multimin_fdfminimizer_type;

my %__gsl_multimin_fdfminimizer_vector_bfgs2_hash;
tie %__gsl_multimin_fdfminimizer_vector_bfgs2_hash,"Math::GSL::Multimin::gsl_multimin_fdfminimizer_type", $Math::GSL::Multiminc::gsl_multimin_fdfminimizer_vector_bfgs2;
$gsl_multimin_fdfminimizer_vector_bfgs2= \%__gsl_multimin_fdfminimizer_vector_bfgs2_hash;
bless $gsl_multimin_fdfminimizer_vector_bfgs2, Math::GSL::Multimin::gsl_multimin_fdfminimizer_type;

my %__gsl_multimin_fminimizer_nmsimplex_hash;
tie %__gsl_multimin_fminimizer_nmsimplex_hash,"Math::GSL::Multimin::gsl_multimin_fminimizer_type", $Math::GSL::Multiminc::gsl_multimin_fminimizer_nmsimplex;
$gsl_multimin_fminimizer_nmsimplex= \%__gsl_multimin_fminimizer_nmsimplex_hash;
bless $gsl_multimin_fminimizer_nmsimplex, Math::GSL::Multimin::gsl_multimin_fminimizer_type;

my %__gsl_multimin_fminimizer_nmsimplex2_hash;
tie %__gsl_multimin_fminimizer_nmsimplex2_hash,"Math::GSL::Multimin::gsl_multimin_fminimizer_type", $Math::GSL::Multiminc::gsl_multimin_fminimizer_nmsimplex2;
$gsl_multimin_fminimizer_nmsimplex2= \%__gsl_multimin_fminimizer_nmsimplex2_hash;
bless $gsl_multimin_fminimizer_nmsimplex2, Math::GSL::Multimin::gsl_multimin_fminimizer_type;

my %__gsl_multimin_fminimizer_nmsimplex2rand_hash;
tie %__gsl_multimin_fminimizer_nmsimplex2rand_hash,"Math::GSL::Multimin::gsl_multimin_fminimizer_type", $Math::GSL::Multiminc::gsl_multimin_fminimizer_nmsimplex2rand;
$gsl_multimin_fminimizer_nmsimplex2rand= \%__gsl_multimin_fminimizer_nmsimplex2rand_hash;
bless $gsl_multimin_fminimizer_nmsimplex2rand, Math::GSL::Multimin::gsl_multimin_fminimizer_type;


@EXPORT_OK = qw/
                gsl_multimin_fdfminimizer_alloc
                gsl_multimin_fminimizer_alloc
                gsl_multimin_fdfminimizer_set
                gsl_multimin_fdfminimizer_free
                gsl_multimin_fminimizer_free
                gsl_multimin_fdfminimizer_name
                gsl_multimin_fminimizer_name
                gsl_multimin_fdfminimizer_iterate
                gsl_multimin_fminimizer_iterate
                gsl_multimin_fdfminimizer_x
                gsl_multimin_fminimizer_x
                gsl_multimin_fdfminimizer_minimum
                gsl_multimin_fminimizer_minimum
                gsl_multimin_fdfminimizer_gradient
                gsl_multimin_fminimizer_size
                gsl_multimin_fdfminimizer_restart
                gsl_multimin_test_gradient
                gsl_multimin_test_size
                $gsl_multimin_fdfminimizer_conjugate_fr
                $gsl_multimin_fdfminimizer_conjugate_pr
                $gsl_multimin_fdfminimizer_vector_bfgs2
                $gsl_multimin_fdfminimizer_vector_bfgs
                $gsl_multimin_fdfminimizer_steepest_descent
                $gsl_multimin_fminimizer_nmsimplex
/;

%EXPORT_TAGS = ( all => [ @EXPORT_OK ] );

__END__

=head1 NAME

Math::GSL::Multimin - Routines for finding minima of arbitrary multidimensional functions

=head1 SYNOPSIS

This module is not yet implemented. Patches Welcome!

use Math::GSL::Multimin qw /:all/;

=head1 DESCRIPTION

Here is a list of all the functions in this module :

=over

=item * C<gsl_multimin_fdfminimizer_alloc>

=item * C<gsl_multimin_fminimizer_alloc>

=item * C<gsl_multimin_fdfminimizer_set>

=item * C<gsl_multimin_fdfminimizer_free>

=item * C<gsl_multimin_fminimizer_free>

=item * C<gsl_multimin_fdfminimizer_name>

=item * C<gsl_multimin_fminimizer_name>

=item * C<gsl_multimin_fdfminimizer_iterate>

=item * C<gsl_multimin_fminimizer_iterate>

=item * C<gsl_multimin_fdfminimizer_x>

=item * C<gsl_multimin_fminimizer_x>

=item * C<gsl_multimin_fdfminimizer_minimum>

=item * C<gsl_multimin_fminimizer_minimum>

=item * C<gsl_multimin_fdfminimizer_gradient>

=item * C<gsl_multimin_fminimizer_size>

=item * C<gsl_multimin_fdfminimizer_restart>

=item * C<gsl_multimin_test_gradient>

=item * C<gsl_multimin_test_size>

=back

This module also includes the following constants :

=over

=item * C<$gsl_multimin_fdfminimizer_conjugate_fr>

=item * C<$gsl_multimin_fdfminimizer_conjugate_pr>

=item * C<$gsl_multimin_fdfminimizer_vector_bfgs2>

=item * C<$gsl_multimin_fdfminimizer_vector_bfgs>

=item * C<$gsl_multimin_fdfminimizer_steepest_descent>

=item * C<$gsl_multimin_fminimizer_nmsimplex>

=back

For more informations on the functions, we refer you to the GSL offcial
documentation: L<http://www.gnu.org/software/gsl/manual/html_node/>




=head1 AUTHORS

Jonathan "Duke" Leto <jonathan@leto.net> and Thierry Moisan <thierry.moisan@gmail.com>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2008-2011 Jonathan "Duke" Leto and Thierry Moisan

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut

1;