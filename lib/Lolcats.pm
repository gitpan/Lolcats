#!/usr/bin/perl -w
=pod 

=head1 NAME

Lolcats::lolify

=head1 SYNOPSIS

Lolcats::lolify ($text)

=head1 DESCRIPTION

Converts plain-text english (not american) to Lolcat pidgin english

=head1 PARAMETERS

=over 4

=item $text - Text to be converted

=back

=head1 RETURN

=over 4

=item Converted text in lolcat pidgin english

=back

=head1 AUTHOR

Andy Dixon <andy.dixon@twistedindustries.co.uk>

=head1 VERSION

0.01 Thu Dec 20 20:08:48 2007

=cut


package Lolcats;

use strict;

our $VERSION = '0.01';

sub Lolify {
    my($data) = @_;
    ## Lolcats text is 99.9% of the time uppercase, and it also makes it easier
    ## to convert
    $data = uc($data);
    $data =~ s/\./\ \./g;
    $data =~ s/CAN\ I\ HAVE\ A\ /I\ CAN\ HAS\ /g;
    $data =~ s/CAN\ I\ HAVE\ /I\ CAN\ HAS\ /g;
    $data =~ s/YOUR/UR/g;
    $data =~ s/ARE\ /IS\ /g;
    $data =~ s/YOU\ /U\ /g;
    $data =~ s/ING/IN/g;
    $data =~ s/OK\ /K\ /g;
    $data =~ s/OKAY\ /K\ /g;
    $data =~ s/THANKS/THX/g;
    $data =~ s/BYE/BAI/g;
    $data =~ s/WITH/WIF/g;
    $data =~ s/HELLO/OH\ HAI/g;
    $data =~ s/THE\ /TEH\ /g;
    $data =~ s/\ MADE\ /\ MADED\ /g;
    $data =~ s/S\ /Z\ /g;
    $data =~ s/FIRST\ /FURST\ /g;
    $data =~ s/IS\ /IZ\ /g;
    $data =~ s/EARTH\ /URFS\ /g;
    $data =~ s/WORLD/WURLD/g;
    $data =~ s/MORE\ /MOAR\ /g;
    $data =~ s/AWESOME/AWSUM/g;
    $data =~ s/SOME/SUM/g;
    $data =~ s/THING\ /FINK\ /g;
    $data =~ s/STUFF\ /STUFFS\ /g;
    $data =~ s/ICT/IK/g;
    $data =~ s/WHY\ /Y\ /g;
    
    return ($data);   
    
}


1;
__END__

=head1 NAME

Lolcats::Lolify - Perl extension for converting text into lolcat pidgin english

=head1 SYNOPSIS

  use Lolcats;
  
  my $text = Lolcats::Lolfy("Can I have a cheeseburger?");

=head1 DESCRIPTION

Converts english text into lolcat pidgin english (http://en.wikipedia.org/wiki/Lolcats)

This modules is continually updated to provide more of a flexible translation, please
send any additional improvements to andy.dixon@twistedindustries.co.uk



=head1 SEE ALSO

http://en.wikipedia.org/wiki/Lolcats

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2007 by Andy Dixon

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.8.8 or,
at your option, any later version of Perl 5 you may have available.


=cut
