###########################################################################
#
# This file is auto-generated by the Perl DateTime Suite locale
# generator (0.05).  This code generator comes with the
# DateTime::Locale distribution in the tools/ directory, and is called
# generate-from-cldr.
#
# This file as generated from the CLDR XML locale data.  See the
# LICENSE.cldr file included in this distribution for license details.
#
# This file was generated from the source file gez_ER.xml
# The source file version number was 1.41, generated on
# 2009/05/05 23:06:36.
#
# Do not edit this file directly.
#
###########################################################################

package DateTime::Locale::gez_ER;

use strict;
use warnings;
use utf8;

use base 'DateTime::Locale::gez';

sub cldr_version { return "1\.7\.1" }

{
    my $first_day_of_week = "6";
    sub first_day_of_week { return $first_day_of_week }
}

{
    my $glibc_date_format = "\%d\/\%m\/\%Y";
    sub glibc_date_format { return $glibc_date_format }
}

{
    my $glibc_date_1_format = "\%A፥\%B፡\%e፡መዓልት፡\%r፡\%Z፡\%Y፡ዓ\/ም";
    sub glibc_date_1_format { return $glibc_date_1_format }
}

{
    my $glibc_datetime_format = "\%A፥\%B፡\%e፡መዓልት፡\%Y፡\%r፡\%Z";
    sub glibc_datetime_format { return $glibc_datetime_format }
}

{
    my $glibc_time_format = "\%l\:\%M\:\%S";
    sub glibc_time_format { return $glibc_time_format }
}

{
    my $glibc_time_12_format = "\%X፡\%p";
    sub glibc_time_12_format { return $glibc_time_12_format }
}

1;

__END__


=pod

=encoding utf8

=head1 NAME

DateTime::Locale::gez_ER

=head1 SYNOPSIS

  use DateTime;

  my $dt = DateTime->now( locale => 'gez_ER' );
  print $dt->month_name();

=head1 DESCRIPTION

This is the DateTime locale package for Geez Eritrea.

=head1 DATA

This locale inherits from the L<DateTime::Locale::gez> locale.

It contains the following data.

=head2 Days

=head3 Wide (format)

  ሰኑይ
  ሠሉስ
  ራብዕ
  ሐሙስ
  ዓርበ
  ቀዳሚት
  እኁድ

=head3 Abbreviated (format)

  ሰኑይ
  ሠሉስ
  ራብዕ
  ሐሙስ
  ዓርበ
  ቀዳሚ
  እኁድ

=head3 Narrow (format)

  ሰ
  ሠ
  ራ
  ሐ
  ዓ
  ቀ
  እ

=head3 Wide (stand-alone)

  ሰኑይ
  ሠሉስ
  ራብዕ
  ሐሙስ
  ዓርበ
  ቀዳሚት
  እኁድ

=head3 Abbreviated (stand-alone)

  ሰኑይ
  ሠሉስ
  ራብዕ
  ሐሙስ
  ዓርበ
  ቀዳሚ
  እኁድ

=head3 Narrow (stand-alone)

  ሰ
  ሠ
  ራ
  ሐ
  ዓ
  ቀ
  እ

=head2 Months

=head3 Wide (format)

  ጠሐረ
  ከተተ
  መገበ
  አኀዘ
  ግንባት
  ሠንየ
  ሐመለ
  ነሐሰ
  ከረመ
  ጠቀመ
  ኀደረ
  ኀሠሠ

=head3 Abbreviated (format)

  ጠሐረ
  ከተተ
  መገበ
  አኀዘ
  ግንባ
  ሠንየ
  ሐመለ
  ነሐሰ
  ከረመ
  ጠቀመ
  ኀደረ
  ኀሠሠ

=head3 Narrow (format)

  ጠ
  ከ
  መ
  አ
  ግ
  ሠ
  ሐ
  ነ
  ከ
  ጠ
  ኀ
  ኀ

=head3 Wide (stand-alone)

  ጠሐረ
  ከተተ
  መገበ
  አኀዘ
  ግንባት
  ሠንየ
  ሐመለ
  ነሐሰ
  ከረመ
  ጠቀመ
  ኀደረ
  ኀሠሠ

=head3 Abbreviated (stand-alone)

  ጠሐረ
  ከተተ
  መገበ
  አኀዘ
  ግንባ
  ሠንየ
  ሐመለ
  ነሐሰ
  ከረመ
  ጠቀመ
  ኀደረ
  ኀሠሠ

=head3 Narrow (stand-alone)

  ጠ
  ከ
  መ
  አ
  ግ
  ሠ
  ሐ
  ነ
  ከ
  ጠ
  ኀ
  ኀ

=head2 Quarters

=head3 Wide (format)

  Q1
  Q2
  Q3
  Q4

=head3 Abbreviated (format)

  Q1
  Q2
  Q3
  Q4

=head3 Narrow (format)

  1
  2
  3
  4

=head3 Wide (stand-alone)

  Q1
  Q2
  Q3
  Q4

=head3 Abbreviated (stand-alone)

  Q1
  Q2
  Q3
  Q4

=head3 Narrow (stand-alone)

  1
  2
  3
  4

=head2 Eras

=head3 Wide

  BCE
  CE

=head3 Abbreviated

  ዓ/ዓ
  ዓ/ም

=head3 Narrow

  ዓ/ዓ
  ዓ/ም

=head2 Date Formats

=head3 Full

   2008-02-05T18:30:30 = ሠሉስ፥ 05 ከተተ መዓልት 2008 ዓ/ም
   1995-12-22T09:05:02 = ዓርበ፥ 22 ኀሠሠ መዓልት 1995 ዓ/ም
  -0010-09-15T04:44:23 = ቀዳሚት፥ 15 ከረመ መዓልት -10 ዓ/ዓ

=head3 Long

   2008-02-05T18:30:30 = 05 ከተተ 2008
   1995-12-22T09:05:02 = 22 ኀሠሠ 1995
  -0010-09-15T04:44:23 = 15 ከረመ -10

=head3 Medium

   2008-02-05T18:30:30 = 05-ከተተ-2008
   1995-12-22T09:05:02 = 22-ኀሠሠ-1995
  -0010-09-15T04:44:23 = 15-ከረመ--10

=head3 Short

   2008-02-05T18:30:30 = 05/02/08
   1995-12-22T09:05:02 = 22/12/95
  -0010-09-15T04:44:23 = 15/09/-10

=head3 Default

   2008-02-05T18:30:30 = 05-ከተተ-2008
   1995-12-22T09:05:02 = 22-ኀሠሠ-1995
  -0010-09-15T04:44:23 = 15-ከረመ--10

=head2 Time Formats

=head3 Full

   2008-02-05T18:30:30 = 6:30:30 ምሴት UTC
   1995-12-22T09:05:02 = 9:05:02 ጽባሕ UTC
  -0010-09-15T04:44:23 = 4:44:23 ጽባሕ UTC

=head3 Long

   2008-02-05T18:30:30 = 6:30:30 ምሴት UTC
   1995-12-22T09:05:02 = 9:05:02 ጽባሕ UTC
  -0010-09-15T04:44:23 = 4:44:23 ጽባሕ UTC

=head3 Medium

   2008-02-05T18:30:30 = 6:30:30 ምሴት
   1995-12-22T09:05:02 = 9:05:02 ጽባሕ
  -0010-09-15T04:44:23 = 4:44:23 ጽባሕ

=head3 Short

   2008-02-05T18:30:30 = 6:30 ምሴት
   1995-12-22T09:05:02 = 9:05 ጽባሕ
  -0010-09-15T04:44:23 = 4:44 ጽባሕ

=head3 Default

   2008-02-05T18:30:30 = 6:30:30 ምሴት
   1995-12-22T09:05:02 = 9:05:02 ጽባሕ
  -0010-09-15T04:44:23 = 4:44:23 ጽባሕ

=head2 Datetime Formats

=head3 Full

   2008-02-05T18:30:30 = ሠሉስ፥ 05 ከተተ መዓልት 2008 ዓ/ም 6:30:30 ምሴት UTC
   1995-12-22T09:05:02 = ዓርበ፥ 22 ኀሠሠ መዓልት 1995 ዓ/ም 9:05:02 ጽባሕ UTC
  -0010-09-15T04:44:23 = ቀዳሚት፥ 15 ከረመ መዓልት -10 ዓ/ዓ 4:44:23 ጽባሕ UTC

=head3 Long

   2008-02-05T18:30:30 = 05 ከተተ 2008 6:30:30 ምሴት UTC
   1995-12-22T09:05:02 = 22 ኀሠሠ 1995 9:05:02 ጽባሕ UTC
  -0010-09-15T04:44:23 = 15 ከረመ -10 4:44:23 ጽባሕ UTC

=head3 Medium

   2008-02-05T18:30:30 = 05-ከተተ-2008 6:30:30 ምሴት
   1995-12-22T09:05:02 = 22-ኀሠሠ-1995 9:05:02 ጽባሕ
  -0010-09-15T04:44:23 = 15-ከረመ--10 4:44:23 ጽባሕ

=head3 Short

   2008-02-05T18:30:30 = 05/02/08 6:30 ምሴት
   1995-12-22T09:05:02 = 22/12/95 9:05 ጽባሕ
  -0010-09-15T04:44:23 = 15/09/-10 4:44 ጽባሕ

=head3 Default

   2008-02-05T18:30:30 = 05-ከተተ-2008 6:30:30 ምሴት
   1995-12-22T09:05:02 = 22-ኀሠሠ-1995 9:05:02 ጽባሕ
  -0010-09-15T04:44:23 = 15-ከረመ--10 4:44:23 ጽባሕ

=head2 Available Formats

=head3 d (d)

   2008-02-05T18:30:30 = 5
   1995-12-22T09:05:02 = 22
  -0010-09-15T04:44:23 = 15

=head3 EEEd (d EEE)

   2008-02-05T18:30:30 = 5 ሠሉስ
   1995-12-22T09:05:02 = 22 ዓርበ
  -0010-09-15T04:44:23 = 15 ቀዳሚ

=head3 Hm (H:mm)

   2008-02-05T18:30:30 = 18:30
   1995-12-22T09:05:02 = 9:05
  -0010-09-15T04:44:23 = 4:44

=head3 hm (h:mm a)

   2008-02-05T18:30:30 = 6:30 ምሴት
   1995-12-22T09:05:02 = 9:05 ጽባሕ
  -0010-09-15T04:44:23 = 4:44 ጽባሕ

=head3 Hms (H:mm:ss)

   2008-02-05T18:30:30 = 18:30:30
   1995-12-22T09:05:02 = 9:05:02
  -0010-09-15T04:44:23 = 4:44:23

=head3 hms (h:mm:ss a)

   2008-02-05T18:30:30 = 6:30:30 ምሴት
   1995-12-22T09:05:02 = 9:05:02 ጽባሕ
  -0010-09-15T04:44:23 = 4:44:23 ጽባሕ

=head3 M (L)

   2008-02-05T18:30:30 = 2
   1995-12-22T09:05:02 = 12
  -0010-09-15T04:44:23 = 9

=head3 Md (M-d)

   2008-02-05T18:30:30 = 2-5
   1995-12-22T09:05:02 = 12-22
  -0010-09-15T04:44:23 = 9-15

=head3 MEd (E, M-d)

   2008-02-05T18:30:30 = ሠሉስ, 2-5
   1995-12-22T09:05:02 = ዓርበ, 12-22
  -0010-09-15T04:44:23 = ቀዳሚ, 9-15

=head3 MMdd (dd/MM)

   2008-02-05T18:30:30 = 05/02
   1995-12-22T09:05:02 = 22/12
  -0010-09-15T04:44:23 = 15/09

=head3 MMM (LLL)

   2008-02-05T18:30:30 = ከተተ
   1995-12-22T09:05:02 = ኀሠሠ
  -0010-09-15T04:44:23 = ከረመ

=head3 MMMd (MMM d)

   2008-02-05T18:30:30 = ከተተ 5
   1995-12-22T09:05:02 = ኀሠሠ 22
  -0010-09-15T04:44:23 = ከረመ 15

=head3 MMMEd (E MMM d)

   2008-02-05T18:30:30 = ሠሉስ ከተተ 5
   1995-12-22T09:05:02 = ዓርበ ኀሠሠ 22
  -0010-09-15T04:44:23 = ቀዳሚ ከረመ 15

=head3 MMMMd (MMMM d)

   2008-02-05T18:30:30 = ከተተ 5
   1995-12-22T09:05:02 = ኀሠሠ 22
  -0010-09-15T04:44:23 = ከረመ 15

=head3 MMMMdd (dd MMMM)

   2008-02-05T18:30:30 = 05 ከተተ
   1995-12-22T09:05:02 = 22 ኀሠሠ
  -0010-09-15T04:44:23 = 15 ከረመ

=head3 MMMMEd (E MMMM d)

   2008-02-05T18:30:30 = ሠሉስ ከተተ 5
   1995-12-22T09:05:02 = ዓርበ ኀሠሠ 22
  -0010-09-15T04:44:23 = ቀዳሚ ከረመ 15

=head3 ms (mm:ss)

   2008-02-05T18:30:30 = 30:30
   1995-12-22T09:05:02 = 05:02
  -0010-09-15T04:44:23 = 44:23

=head3 y (y)

   2008-02-05T18:30:30 = 2008
   1995-12-22T09:05:02 = 1995
  -0010-09-15T04:44:23 = -10

=head3 yM (y-M)

   2008-02-05T18:30:30 = 2008-2
   1995-12-22T09:05:02 = 1995-12
  -0010-09-15T04:44:23 = -10-9

=head3 yMEd (EEE, y-M-d)

   2008-02-05T18:30:30 = ሠሉስ, 2008-2-5
   1995-12-22T09:05:02 = ዓርበ, 1995-12-22
  -0010-09-15T04:44:23 = ቀዳሚ, -10-9-15

=head3 yMMM (y MMM)

   2008-02-05T18:30:30 = 2008 ከተተ
   1995-12-22T09:05:02 = 1995 ኀሠሠ
  -0010-09-15T04:44:23 = -10 ከረመ

=head3 yMMMEd (EEE, y MMM d)

   2008-02-05T18:30:30 = ሠሉስ, 2008 ከተተ 5
   1995-12-22T09:05:02 = ዓርበ, 1995 ኀሠሠ 22
  -0010-09-15T04:44:23 = ቀዳሚ, -10 ከረመ 15

=head3 yMMMM (y MMMM)

   2008-02-05T18:30:30 = 2008 ከተተ
   1995-12-22T09:05:02 = 1995 ኀሠሠ
  -0010-09-15T04:44:23 = -10 ከረመ

=head3 yQ (y Q)

   2008-02-05T18:30:30 = 2008 1
   1995-12-22T09:05:02 = 1995 4
  -0010-09-15T04:44:23 = -10 3

=head3 yQQQ (y QQQ)

   2008-02-05T18:30:30 = 2008 Q1
   1995-12-22T09:05:02 = 1995 Q4
  -0010-09-15T04:44:23 = -10 Q3

=head3 yyMM (MM/yy)

   2008-02-05T18:30:30 = 02/08
   1995-12-22T09:05:02 = 12/95
  -0010-09-15T04:44:23 = 09/-10

=head3 yyQ (Q yy)

   2008-02-05T18:30:30 = 1 08
   1995-12-22T09:05:02 = 4 95
  -0010-09-15T04:44:23 = 3 -10

=head3 yyyyMMMM (MMMM y)

   2008-02-05T18:30:30 = ከተተ 2008
   1995-12-22T09:05:02 = ኀሠሠ 1995
  -0010-09-15T04:44:23 = ከረመ -10

=head2 Miscellaneous

=head3 Prefers 24 hour time?

No

=head3 Local first day of the week

ቀዳሚት


=head1 SUPPORT

See L<DateTime::Locale>.

=head1 AUTHOR

Dave Rolsky <autarch@urth.org>

=head1 COPYRIGHT

Copyright (c) 2008 David Rolsky. All rights reserved. This program is
free software; you can redistribute it and/or modify it under the same
terms as Perl itself.

This module was generated from data provided by the CLDR project, see
the LICENSE.cldr in this distribution for details on the CLDR data's
license.

=cut
