package Dist::Zilla::Plugin::GitHubREADME::Badge;

use strict;
use 5.008_005;
our $VERSION = '0.01';

use Moose;
with ('Dist::Zilla::Role::FileMunger');
use namespace::autoclean;

has badges => (
    is      => 'rw',
    isa     => 'ArrayRef[Str]',
    default => sub { ['travis', 'coveralls'] },
);

sub munge_file {
    my ($self) = @_;

    $self->add_badges($_) for @{ $self->found_files };
}

sub add_badges {
    my ($self, $file) = @_;

    return unless $file->name =~ /README\.md$/i;

    my $content = $file->content;

    my $badges = $self->badges;

    use Data::Dumper;
    print STDERR Dumper(\$badges);
}

1;
__END__

=encoding utf-8

=head1 NAME

Dist::Zilla::Plugin::GitHubREADME::Badge - Dist::Zilla - add badges to github README.md

=head1 SYNOPSIS

    # in dzil.ini

    [GitHubREADME::Badge]

=head1 DESCRIPTION

Dist::Zilla::Plugin::GitHubREADME::Badge is to add badges in github README.md

=head1 SEE ALSO

L<Minilla>, L<Dist::Zilla::Plugin::TravisCI::StatusBadge>

=head1 AUTHOR

Fayland Lam E<lt>fayland@gmail.comE<gt>

=head1 COPYRIGHT

Copyright 2014- Fayland Lam

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 SEE ALSO

=cut
