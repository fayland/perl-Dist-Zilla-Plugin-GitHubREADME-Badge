[![Build Status](https://travis-ci.org/fayland/perl-Dist-Zilla-Plugin-GitHubREADME-Badge.svg?branch=master)](https://travis-ci.org/fayland/perl-Dist-Zilla-Plugin-GitHubREADME-Badge)
[![Coverage Status](https://coveralls.io/repos/fayland/perl-Dist-Zilla-Plugin-GitHubREADME-Badge/badge.svg?branch=master)](https://coveralls.io/r/fayland/perl-Dist-Zilla-Plugin-GitHubREADME-Badge?branch=master)
[![codecov](https://codecov.io/gh/fayland/perl-Dist-Zilla-Plugin-GitHubREADME-Badge/branch/master/graph/badge.svg)](https://codecov.io/gh/fayland/perl-Dist-Zilla-Plugin-GitHubREADME-Badge)
[![Gitter chat](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/fayland/perl-Dist-Zilla-Plugin-GitHubREADME-Badge)
[![Kwalitee status](https://cpants.cpanauthors.org/dist/Dist-Zilla-Plugin-GitHubREADME-Badge.png)](https://cpants.cpanauthors.org/dist/Dist-Zilla-Plugin-GitHubREADME-Badge)
[![GitHub issues](https://img.shields.io/github/issues/fayland/perl-Dist-Zilla-Plugin-GitHubREADME-Badge.svg)](https://github.com/fayland/perl-Dist-Zilla-Plugin-GitHubREADME-Badge/issues)
[![GitHub tag](https://img.shields.io/github/tag/fayland/perl-Dist-Zilla-Plugin-GitHubREADME-Badge.svg)]()
[![Cpan license](https://img.shields.io/cpan/l/Dist-Zilla-Plugin-GitHubREADME-Badge.svg)](https://metacpan.org/release/Dist-Zilla-Plugin-GitHubREADME-Badge)
[![Cpan version](https://img.shields.io/cpan/v/Dist-Zilla-Plugin-GitHubREADME-Badge.svg)](https://metacpan.org/release/Dist-Zilla-Plugin-GitHubREADME-Badge)
[![CPAN Cover Status](https://cpancoverbadge.perl-services.de/Dist-Zilla-Plugin-GitHubREADME-Badge-0.35)](https://cpancoverbadge.perl-services.de/Dist-Zilla-Plugin-GitHubREADME-Badge-0.35)

# NAME

Dist::Zilla::Plugin::GitHubREADME::Badge - Dist::Zilla - add badges to github README.md

# SYNOPSIS

    # in dist.ini
    [GitHubREADME::Badge]

    # configure it yourself
    [GitHubREADME::Badge]
    badges = travis
    badges = travis-ci.com
    badges = appveyor
    badges = coveralls
    badges = gitter
    badges = cpants
    badges = issues
    badges = github_tag
    badges = license
    badges = version
    badges = codecov
    badges = gitlab_ci
    badges = gitlab_cover
    badges = docker_automated
    badges = docker_build
    badges = github_actions/test.yml
    badges = cpancover
    place = bottom
    phase = release
    branch = main

# DESCRIPTION

Dist::Zilla::Plugin::GitHubREADME::Badge adds badges to GitHub README.md

# CONFIG

## badges

Currently only travis, coveralls, codecov, gitter, cpants and GH issues are
supported. However patches are welcome.

The default goes to travis, coveralls and cpants.

    [GitHubREADME::Badge]
    badges = travis
    badges = coveralls
    badges = gitter
    badges = cpants

## branch

    [GitHubREADME::Badge]
    branch = main

defaults to 'master'. you need set to 'main' for new github repos

## place

    [GitHubREADME::Badge]
    place = bottom

Place the badges at the top or bottom of the README. Defaults to top.

## phase

    [GitHubREADME::Badge]
    phase = release

Which Dist::Zilla phase to add the badges: `build`, `release` or `filemunge`.
For the `build` and `release` phases, the README that is on disk will
be modified, whereas for the `filemunge` it's the internal zilla version of
the README that will be modified.

The default is `build`.

# SEE ALSO

[Minilla](https://metacpan.org/pod/Minilla), [Dist::Zilla::Plugin::TravisCI::StatusBadge](https://metacpan.org/pod/Dist%3A%3AZilla%3A%3APlugin%3A%3ATravisCI%3A%3AStatusBadge)

# AUTHOR

Fayland Lam <fayland@gmail.com>

# COPYRIGHT

Copyright 2014- Fayland Lam

# LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
