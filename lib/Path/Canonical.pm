package Path::Canonical;
use 5.008005;
use strict;
use warnings;
use base 'Exporter';

our @EXPORT = qw/canonpath/;

our $VERSION = "0.02";

sub canonpath {
    my $path = shift;
    my @ret = ();
    $path .= '/' if $path =~ /[.\/]$/;
    for my $tok (split(/\/+/, $path . '-')) {
         next if $tok eq '.';
         if ($tok eq '..') {
             pop @ret;
             next;
         }
         push @ret, $tok if $tok;
    }
    '/' . substr(join('/', @ret), 0, -1)
}

1;
__END__

=encoding utf-8

=head1 NAME

Path::Canonical - Simply utility function to get canonical paths.

=head1 SYNOPSIS

    use Path::Canonical;

=head1 DESCRIPTION

Path::Canonical is simply utility function to get canonical paths.
Cwd::abs_path are using realpath to get canonical paths. So the file should be exists.
But if you want to write web application and handle requset URIs, you need to avoid adirectory traversal.

=head1 LICENSE

Copyright (C) mattn.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

mattn E<lt>mattn.jp@gmail.comE<gt>

=cut

