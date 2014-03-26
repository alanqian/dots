# This file was automatically generated by SWIG (http://www.swig.org).
# Version 2.0.4
#
# Do not make changes to this file unless you know what you are doing--modify
# the SWIG interface file instead.

package Math::GSL::Integration;
use base qw(Exporter);
use base qw(DynaLoader);
package Math::GSL::Integrationc;
bootstrap Math::GSL::Integration;
package Math::GSL::Integration;
@EXPORT = qw();

# ---------- BASE METHODS -------------

package Math::GSL::Integration;

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

package Math::GSL::Integration;

*gsl_integration_workspace_alloc = *Math::GSL::Integrationc::gsl_integration_workspace_alloc;
*gsl_integration_workspace_free = *Math::GSL::Integrationc::gsl_integration_workspace_free;
*gsl_integration_qaws_table_alloc = *Math::GSL::Integrationc::gsl_integration_qaws_table_alloc;
*gsl_integration_qaws_table_set = *Math::GSL::Integrationc::gsl_integration_qaws_table_set;
*gsl_integration_qaws_table_free = *Math::GSL::Integrationc::gsl_integration_qaws_table_free;
*gsl_integration_qawo_table_alloc = *Math::GSL::Integrationc::gsl_integration_qawo_table_alloc;
*gsl_integration_qawo_table_set = *Math::GSL::Integrationc::gsl_integration_qawo_table_set;
*gsl_integration_qawo_table_set_length = *Math::GSL::Integrationc::gsl_integration_qawo_table_set_length;
*gsl_integration_qawo_table_free = *Math::GSL::Integrationc::gsl_integration_qawo_table_free;
*gsl_integration_qk15 = *Math::GSL::Integrationc::gsl_integration_qk15;
*gsl_integration_qk21 = *Math::GSL::Integrationc::gsl_integration_qk21;
*gsl_integration_qk31 = *Math::GSL::Integrationc::gsl_integration_qk31;
*gsl_integration_qk41 = *Math::GSL::Integrationc::gsl_integration_qk41;
*gsl_integration_qk51 = *Math::GSL::Integrationc::gsl_integration_qk51;
*gsl_integration_qk61 = *Math::GSL::Integrationc::gsl_integration_qk61;
*gsl_integration_qcheb = *Math::GSL::Integrationc::gsl_integration_qcheb;
*gsl_integration_qk = *Math::GSL::Integrationc::gsl_integration_qk;
*gsl_integration_qng = *Math::GSL::Integrationc::gsl_integration_qng;
*gsl_integration_qag = *Math::GSL::Integrationc::gsl_integration_qag;
*gsl_integration_qagi = *Math::GSL::Integrationc::gsl_integration_qagi;
*gsl_integration_qagiu = *Math::GSL::Integrationc::gsl_integration_qagiu;
*gsl_integration_qagil = *Math::GSL::Integrationc::gsl_integration_qagil;
*gsl_integration_qags = *Math::GSL::Integrationc::gsl_integration_qags;
*gsl_integration_qagp = *Math::GSL::Integrationc::gsl_integration_qagp;
*gsl_integration_qawc = *Math::GSL::Integrationc::gsl_integration_qawc;
*gsl_integration_qaws = *Math::GSL::Integrationc::gsl_integration_qaws;
*gsl_integration_qawo = *Math::GSL::Integrationc::gsl_integration_qawo;
*gsl_integration_qawf = *Math::GSL::Integrationc::gsl_integration_qawf;

############# Class : Math::GSL::Integration::gsl_integration_workspace ##############

package Math::GSL::Integration::gsl_integration_workspace;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( Math::GSL::Integration );
%OWNER = ();
%ITERATORS = ();
*swig_limit_get = *Math::GSL::Integrationc::gsl_integration_workspace_limit_get;
*swig_limit_set = *Math::GSL::Integrationc::gsl_integration_workspace_limit_set;
*swig_size_get = *Math::GSL::Integrationc::gsl_integration_workspace_size_get;
*swig_size_set = *Math::GSL::Integrationc::gsl_integration_workspace_size_set;
*swig_nrmax_get = *Math::GSL::Integrationc::gsl_integration_workspace_nrmax_get;
*swig_nrmax_set = *Math::GSL::Integrationc::gsl_integration_workspace_nrmax_set;
*swig_i_get = *Math::GSL::Integrationc::gsl_integration_workspace_i_get;
*swig_i_set = *Math::GSL::Integrationc::gsl_integration_workspace_i_set;
*swig_maximum_level_get = *Math::GSL::Integrationc::gsl_integration_workspace_maximum_level_get;
*swig_maximum_level_set = *Math::GSL::Integrationc::gsl_integration_workspace_maximum_level_set;
*swig_alist_get = *Math::GSL::Integrationc::gsl_integration_workspace_alist_get;
*swig_alist_set = *Math::GSL::Integrationc::gsl_integration_workspace_alist_set;
*swig_blist_get = *Math::GSL::Integrationc::gsl_integration_workspace_blist_get;
*swig_blist_set = *Math::GSL::Integrationc::gsl_integration_workspace_blist_set;
*swig_rlist_get = *Math::GSL::Integrationc::gsl_integration_workspace_rlist_get;
*swig_rlist_set = *Math::GSL::Integrationc::gsl_integration_workspace_rlist_set;
*swig_elist_get = *Math::GSL::Integrationc::gsl_integration_workspace_elist_get;
*swig_elist_set = *Math::GSL::Integrationc::gsl_integration_workspace_elist_set;
*swig_order_get = *Math::GSL::Integrationc::gsl_integration_workspace_order_get;
*swig_order_set = *Math::GSL::Integrationc::gsl_integration_workspace_order_set;
*swig_level_get = *Math::GSL::Integrationc::gsl_integration_workspace_level_get;
*swig_level_set = *Math::GSL::Integrationc::gsl_integration_workspace_level_set;
sub new {
    my $pkg = shift;
    my $self = Math::GSL::Integrationc::new_gsl_integration_workspace(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Math::GSL::Integrationc::delete_gsl_integration_workspace($self);
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


############# Class : Math::GSL::Integration::gsl_integration_qaws_table ##############

package Math::GSL::Integration::gsl_integration_qaws_table;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( Math::GSL::Integration );
%OWNER = ();
%ITERATORS = ();
*swig_alpha_get = *Math::GSL::Integrationc::gsl_integration_qaws_table_alpha_get;
*swig_alpha_set = *Math::GSL::Integrationc::gsl_integration_qaws_table_alpha_set;
*swig_beta_get = *Math::GSL::Integrationc::gsl_integration_qaws_table_beta_get;
*swig_beta_set = *Math::GSL::Integrationc::gsl_integration_qaws_table_beta_set;
*swig_mu_get = *Math::GSL::Integrationc::gsl_integration_qaws_table_mu_get;
*swig_mu_set = *Math::GSL::Integrationc::gsl_integration_qaws_table_mu_set;
*swig_nu_get = *Math::GSL::Integrationc::gsl_integration_qaws_table_nu_get;
*swig_nu_set = *Math::GSL::Integrationc::gsl_integration_qaws_table_nu_set;
*swig_ri_get = *Math::GSL::Integrationc::gsl_integration_qaws_table_ri_get;
*swig_ri_set = *Math::GSL::Integrationc::gsl_integration_qaws_table_ri_set;
*swig_rj_get = *Math::GSL::Integrationc::gsl_integration_qaws_table_rj_get;
*swig_rj_set = *Math::GSL::Integrationc::gsl_integration_qaws_table_rj_set;
*swig_rg_get = *Math::GSL::Integrationc::gsl_integration_qaws_table_rg_get;
*swig_rg_set = *Math::GSL::Integrationc::gsl_integration_qaws_table_rg_set;
*swig_rh_get = *Math::GSL::Integrationc::gsl_integration_qaws_table_rh_get;
*swig_rh_set = *Math::GSL::Integrationc::gsl_integration_qaws_table_rh_set;
sub new {
    my $pkg = shift;
    my $self = Math::GSL::Integrationc::new_gsl_integration_qaws_table(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Math::GSL::Integrationc::delete_gsl_integration_qaws_table($self);
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


############# Class : Math::GSL::Integration::gsl_integration_qawo_table ##############

package Math::GSL::Integration::gsl_integration_qawo_table;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( Math::GSL::Integration );
%OWNER = ();
%ITERATORS = ();
*swig_n_get = *Math::GSL::Integrationc::gsl_integration_qawo_table_n_get;
*swig_n_set = *Math::GSL::Integrationc::gsl_integration_qawo_table_n_set;
*swig_omega_get = *Math::GSL::Integrationc::gsl_integration_qawo_table_omega_get;
*swig_omega_set = *Math::GSL::Integrationc::gsl_integration_qawo_table_omega_set;
*swig_L_get = *Math::GSL::Integrationc::gsl_integration_qawo_table_L_get;
*swig_L_set = *Math::GSL::Integrationc::gsl_integration_qawo_table_L_set;
*swig_par_get = *Math::GSL::Integrationc::gsl_integration_qawo_table_par_get;
*swig_par_set = *Math::GSL::Integrationc::gsl_integration_qawo_table_par_set;
*swig_sine_get = *Math::GSL::Integrationc::gsl_integration_qawo_table_sine_get;
*swig_sine_set = *Math::GSL::Integrationc::gsl_integration_qawo_table_sine_set;
*swig_chebmo_get = *Math::GSL::Integrationc::gsl_integration_qawo_table_chebmo_get;
*swig_chebmo_set = *Math::GSL::Integrationc::gsl_integration_qawo_table_chebmo_set;
sub new {
    my $pkg = shift;
    my $self = Math::GSL::Integrationc::new_gsl_integration_qawo_table(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Math::GSL::Integrationc::delete_gsl_integration_qawo_table($self);
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


############# Class : Math::GSL::Integration::gsl_function_struct ##############

package Math::GSL::Integration::gsl_function_struct;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( Math::GSL::Integration );
%OWNER = ();
%ITERATORS = ();
*swig_function_get = *Math::GSL::Integrationc::gsl_function_struct_function_get;
*swig_function_set = *Math::GSL::Integrationc::gsl_function_struct_function_set;
*swig_params_get = *Math::GSL::Integrationc::gsl_function_struct_params_get;
*swig_params_set = *Math::GSL::Integrationc::gsl_function_struct_params_set;
sub new {
    my $pkg = shift;
    my $self = Math::GSL::Integrationc::new_gsl_function_struct(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Math::GSL::Integrationc::delete_gsl_function_struct($self);
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


############# Class : Math::GSL::Integration::gsl_function_fdf_struct ##############

package Math::GSL::Integration::gsl_function_fdf_struct;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( Math::GSL::Integration );
%OWNER = ();
%ITERATORS = ();
*swig_f_get = *Math::GSL::Integrationc::gsl_function_fdf_struct_f_get;
*swig_f_set = *Math::GSL::Integrationc::gsl_function_fdf_struct_f_set;
*swig_df_get = *Math::GSL::Integrationc::gsl_function_fdf_struct_df_get;
*swig_df_set = *Math::GSL::Integrationc::gsl_function_fdf_struct_df_set;
*swig_fdf_get = *Math::GSL::Integrationc::gsl_function_fdf_struct_fdf_get;
*swig_fdf_set = *Math::GSL::Integrationc::gsl_function_fdf_struct_fdf_set;
*swig_params_get = *Math::GSL::Integrationc::gsl_function_fdf_struct_params_get;
*swig_params_set = *Math::GSL::Integrationc::gsl_function_fdf_struct_params_set;
sub new {
    my $pkg = shift;
    my $self = Math::GSL::Integrationc::new_gsl_function_fdf_struct(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Math::GSL::Integrationc::delete_gsl_function_fdf_struct($self);
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


############# Class : Math::GSL::Integration::gsl_function_vec_struct ##############

package Math::GSL::Integration::gsl_function_vec_struct;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( Math::GSL::Integration );
%OWNER = ();
%ITERATORS = ();
*swig_function_get = *Math::GSL::Integrationc::gsl_function_vec_struct_function_get;
*swig_function_set = *Math::GSL::Integrationc::gsl_function_vec_struct_function_set;
*swig_params_get = *Math::GSL::Integrationc::gsl_function_vec_struct_params_get;
*swig_params_set = *Math::GSL::Integrationc::gsl_function_vec_struct_params_set;
sub new {
    my $pkg = shift;
    my $self = Math::GSL::Integrationc::new_gsl_function_vec_struct(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Math::GSL::Integrationc::delete_gsl_function_vec_struct($self);
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

package Math::GSL::Integration;

*GSL_MAJOR_VERSION = *Math::GSL::Integrationc::GSL_MAJOR_VERSION;
*GSL_MINOR_VERSION = *Math::GSL::Integrationc::GSL_MINOR_VERSION;
*GSL_POSZERO = *Math::GSL::Integrationc::GSL_POSZERO;
*GSL_NEGZERO = *Math::GSL::Integrationc::GSL_NEGZERO;
*GSL_INTEG_COSINE = *Math::GSL::Integrationc::GSL_INTEG_COSINE;
*GSL_INTEG_SINE = *Math::GSL::Integrationc::GSL_INTEG_SINE;
*GSL_INTEG_GAUSS15 = *Math::GSL::Integrationc::GSL_INTEG_GAUSS15;
*GSL_INTEG_GAUSS21 = *Math::GSL::Integrationc::GSL_INTEG_GAUSS21;
*GSL_INTEG_GAUSS31 = *Math::GSL::Integrationc::GSL_INTEG_GAUSS31;
*GSL_INTEG_GAUSS41 = *Math::GSL::Integrationc::GSL_INTEG_GAUSS41;
*GSL_INTEG_GAUSS51 = *Math::GSL::Integrationc::GSL_INTEG_GAUSS51;
*GSL_INTEG_GAUSS61 = *Math::GSL::Integrationc::GSL_INTEG_GAUSS61;
*M_E = *Math::GSL::Integrationc::M_E;
*M_LOG2E = *Math::GSL::Integrationc::M_LOG2E;
*M_LOG10E = *Math::GSL::Integrationc::M_LOG10E;
*M_SQRT2 = *Math::GSL::Integrationc::M_SQRT2;
*M_SQRT1_2 = *Math::GSL::Integrationc::M_SQRT1_2;
*M_SQRT3 = *Math::GSL::Integrationc::M_SQRT3;
*M_PI = *Math::GSL::Integrationc::M_PI;
*M_PI_2 = *Math::GSL::Integrationc::M_PI_2;
*M_PI_4 = *Math::GSL::Integrationc::M_PI_4;
*M_SQRTPI = *Math::GSL::Integrationc::M_SQRTPI;
*M_2_SQRTPI = *Math::GSL::Integrationc::M_2_SQRTPI;
*M_1_PI = *Math::GSL::Integrationc::M_1_PI;
*M_2_PI = *Math::GSL::Integrationc::M_2_PI;
*M_LN10 = *Math::GSL::Integrationc::M_LN10;
*M_LN2 = *Math::GSL::Integrationc::M_LN2;
*M_LNPI = *Math::GSL::Integrationc::M_LNPI;
*M_EULER = *Math::GSL::Integrationc::M_EULER;

@EXPORT_OK = qw/
               gsl_integration_workspace_alloc 
               gsl_integration_workspace_free 
               gsl_integration_qaws_table_alloc 
               gsl_integration_qaws_table_set 
               gsl_integration_qaws_table_free 
               gsl_integration_qawo_table_alloc 
               gsl_integration_qawo_table_set 
               gsl_integration_qawo_table_set_length 
               gsl_integration_qawo_table_free 
               gsl_integration_qk15 
               gsl_integration_qk21 
               gsl_integration_qk31 
               gsl_integration_qk41 
               gsl_integration_qk51 
               gsl_integration_qk61 
               gsl_integration_qcheb 
               gsl_integration_qk 
               gsl_integration_qng 
               gsl_integration_qag 
               gsl_integration_qagi 
               gsl_integration_qagiu 
               gsl_integration_qagil 
               gsl_integration_qags 
               gsl_integration_qagp 
               gsl_integration_qawc 
               gsl_integration_qaws 
               gsl_integration_qawo 
               gsl_integration_qawf 
               $GSL_INTEG_COSINE 
               $GSL_INTEG_SINE 
               $GSL_INTEG_GAUSS15 
               $GSL_INTEG_GAUSS21 
               $GSL_INTEG_GAUSS31 
               $GSL_INTEG_GAUSS41 
               $GSL_INTEG_GAUSS51 
               $GSL_INTEG_GAUSS61 
             /;
%EXPORT_TAGS = ( all => [ @EXPORT_OK ] );

__END__

=head1 NAME

Math::GSL::Integration - Routines for performing numerical integration (quadrature) of a function in one dimension

=head1 SYNOPSIS

    use Math::GSL::Integration qw /:all/;

    my $function = sub { $_[0]**2 } ;
    my ($lower, $upper ) = (0,1);
    my ($relerr,$abserr) = (0,1e-7);

    my ($status, $result, $abserr, $num_evals) = gsl_integration_qng ( $function,
                                                    $lower, $upper, $relerr, $abserr
                                                 );

=head1 DESCRIPTION

This module allows you to numerically integrate a Perl subroutine. Depending
on the properties of your function (singularities, smoothness) and the type
of integration range (finite, infinite, semi-infinite), you will need to 
choose a quadrature routine that fits your needs.


=over 

=item * C<gsl_integration_workspace_alloc($n)> 

This function allocates a workspace sufficient to hold $n double precision
intervals, their integration results and error estimates.

=item * C<gsl_integration_workspace_free($w)> 

 This function frees the memory associated with the workspace $w.

=item * C<gsl_integration_qaws_table_alloc($alpha, $beta, $mu, $nu)> 

 This function allocates space for a gsl_integration_qaws_table struct
 describing a singular weight function W(x) with the parameters ($alpha, $beta,
 $mu, $nu), W(x) = (x-a)^alpha (b-x)^beta log^mu (x-a) log^nu (b-x) where
 $alpha > -1, $beta > -1, and $mu = 0, 1, $nu = 0, 1. The weight function can
 take four different forms depending on the values of $mu and $nu,

              W(x) = (x-a)^alpha (b-x)^beta                   (mu = 0, nu = 0)
              W(x) = (x-a)^alpha (b-x)^beta log(x-a)          (mu = 1, nu = 0)
              W(x) = (x-a)^alpha (b-x)^beta log(b-x)          (mu = 0, nu = 1)
              W(x) = (x-a)^alpha (b-x)^beta log(x-a) log(b-x) (mu = 1, nu = 1)

The singular points (a,b) do not have to be specified until the integral is
computed, where they are the endpoints of the integration range.  The function
returns a pointer to the newly allocated table gsl_integration_qaws_table if no
errors were detected, and 0 in the case of error. 

=item * C<gsl_integration_qaws_table_set($t, $alpha, $beta, $mu, $nu)> 

 This function modifies the parameters ($alpha, $beta, $mu, $nu) of an existing
 gsl_integration_qaws_table struct $t.

=item * C<gsl_integration_qaws_table_free($t)> 

 This function frees all the memory associated with the
 gsl_integration_qaws_table struct $t.

=item * C<gsl_integration_qawo_table_alloc($omega, $L, $sine, $n)>

=item * C<gsl_integration_qawo_table_set($t, $omega, $L, $sine, $n)> 

 This function changes the parameters omega, L and sine of the existing
 workspace $t.

=item * C<gsl_integration_qawo_table_set_length($t, $L)> 

 This function allows the length parameter $L of the workspace $t to be
 changed.

=item * C<gsl_integration_qawo_table_free($t)> 

 This function frees all the memory associated with the workspace $t.

=item * C<gsl_integration_qk15($function,$a,$b,$resabs,$resasc) >

=item * C<gsl_integration_qk21($function,$a,$b,$resabs,$resasc) >

=item * C<gsl_integration_qk31($function,$a,$b,$resabs,$resasc) >

=item * C<gsl_integration_qk41($function,$a,$b,$resabs,$resasc) >

=item * C<gsl_integration_qk51($function,$a,$b,$resabs,$resasc) >

=item * C<gsl_integration_qk61($function,$a,$b,$resabs,$resasc) >

=item * C<gsl_integration_qcheb($function, $a, $b, $cheb12, $cheb24) >

=item * C<gsl_integration_qk >

=item * C<gsl_integration_qng($function,$a,$b,$epsabs,$epsrel,$num_evals) >

This routine QNG (Quadrature Non-Adaptive Gaussian) is inexpensive is the sense
that it will evaluate the function much fewer times than the adaptive routines.
Because of this it does not need any workspaces, so it is also more memory
efficient. It should be perfectly fine for well-behaved functions (smooth and
nonsingular), but will not be able to get the required accuracy or may not
converge for more complicated functions.

=item * C<gsl_integration_qag($function,$a,$b,$epsabs,$epsrel,$limit,$key,$workspace) >

This routine QAG (Quadrature Adaptive Gaussian) ...

=item * C<gsl_integration_qagi($function,$epsabs,$epsrel,$limit,$workspace) >

=item * C<gsl_integration_qagiu($function,$a,$epsabs,$epsrel,$limit,$workspace) >

=item * C<gsl_integration_qagil($function,$b,$epsabs,$epsrel,$limit,$workspace) >

=item * C<gsl_integration_qags($func,$a,$b,$epsabs,$epsrel,$limit,$workspace)>

    ($status, $result, $abserr) = gsl_integration_qags (
                            sub { 1/$_[0]} , 
                            1, 10, 0, 1e-7, 1000,
                            $workspace,
                        );

 This function applies the Gauss-Kronrod 21-point integration rule
 adaptively until an estimate of the integral of $func over ($a,$b) is
 achieved within the desired absolute and relative error limits,
 $epsabs and $epsrel. 


=item * C<gsl_integration_qagp($function, $pts, $npts, $epsbs, $epsrel, $limit, $workspace) >

=item * C<gsl_integration_qawc($function, $a, $b, $c, $epsabs, $epsrel, $limit, $workspace) >

=item * C<gsl_integration_qaws($function, $a, $b, $qaws_table, $epsabs, $epsrel, $limit, $workspace) >

=item * C<gsl_integration_qawo($function, $a, $epsabs, $epsrel, $limit, $workspace, $qawo_table) >

=item * C<gsl_integration_qawf($function, $a, $epsabs, $limit, $workspace, $cycle_workspace, $qawo_table) >

=back

This module also includes the following constants :

=over

=item * $GSL_INTEG_COSINE 

=item * $GSL_INTEG_SINE 

=item * $GSL_INTEG_GAUSS15 

=item * $GSL_INTEG_GAUSS21 

=item * $GSL_INTEG_GAUSS31 

=item * $GSL_INTEG_GAUSS41 

=item * $GSL_INTEG_GAUSS51 

=item * $GSL_INTEG_GAUSS61 

=back

The following error constants are part of the Math::GSL::Errno module and can
be returned by the gsl_integration_* functions :

=over

=item * $GSL_EMAXITER 

Maximum number of subdivisions was exceeded.

=item * $GSL_EROUND 

Cannot reach tolerance because of roundoff error, or roundoff error was detected in the extrapolation table. 

=item * GSL_ESING 

A non-integrable singularity or other bad integrand behavior was found in the integration interval.

=item * GSL_EDIVERGE 

The integral is divergent, or too slowly convergent to be integrated numerically. 

=back 
 
=head1 MORE INFO

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
