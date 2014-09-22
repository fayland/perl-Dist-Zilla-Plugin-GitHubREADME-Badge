package Dist::Zilla::Plugin::GitHubREADME::Badge;

use strict;
use 5.008_005;
our $VERSION = '0.02';

use Moose;
use namespace::autoclean;
use Dist::Zilla::File::OnDisk;
use Path::Tiny;

# same as Dist::Zilla::Plugin::ReadmeAnyFromPod
with 'Dist::Zilla::Role::AfterBuild';

has badges => (
    is      => 'rw',
    isa     => 'ArrayRef[Str]',
    default => sub { ['travis', 'coveralls'] },
);
sub mvp_multivalue_args { ('badges') }

sub after_build {
    my ($self) = @_;

    my $distmeta = $self->zilla->distmeta;
    my $repository = $distmeta->{resources}->{repository}->{url};
    return unless $repository;
    my ($user_name, $repository_name) = ($repository =~ m{github.com/([^\/]+)/(.*?)(\.git|\/|$)});
    return unless $repository_name;

    my $file = $self->zilla->root->file('README.md');
    my $readme = Dist::Zilla::File::OnDisk->new(name => "$file");

    my $content = $readme->content;

    my @badges;
    foreach my $badge (@{$self->badges}) {
        if ($badge eq 'travis') {
            push @badges, "[![Build Status](https://travis-ci.org/$user_name/$repository_name.svg?branch=master)](https://travis-ci.org/$user_name/$repository_name)";
        } elsif ($badge eq 'coveralls') {
            push @badges, "[![Coverage Status](https://coveralls.io/repos/$user_name/$repository_name/badge.png?branch=master)](https://coveralls.io/r/$user_name/$repository_name?branch=master)"
        } elsif ($badge eq 'gitter') {
            push @badges, "[![Gitter chat](https://badges.gitter.im/$user_name/$repository_name.png)](https://gitter.im/$user_name/$repository_name)";
        }
    }

    $content = join("\n", @badges) . "\n\n" . $content;

    Path::Tiny::path($file)->spew_raw($content);
}

1;
__END__

=encoding utf-8

=head1 NAME

Dist::Zilla::Plugin::GitHubREADME::Badge - Dist::Zilla - add badges to github README.md

=head1 SYNOPSIS

    # in dzil.ini
    [GitHubREADME::Badge]

    # configure it yourself
    [GitHubREADME::Badge]
    badges = travis
    badges = coveralls
    badges = gitter

=head1 DESCRIPTION

Dist::Zilla::Plugin::GitHubREADME::Badge is to add badges in github README.md

Currently only travis, coveralls and gitter are supported. but patches welcome.

default goes to travis and coveralls.

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
