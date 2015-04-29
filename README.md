[![Build Status](https://travis-ci.org/fayland/perl-Dist-Zilla-Plugin-GitHubREADME-Badge.svg?branch=master)](https://travis-ci.org/fayland/perl-Dist-Zilla-Plugin-GitHubREADME-Badge)
[![Coverage Status](https://coveralls.io/repos/fayland/perl-Dist-Zilla-Plugin-GitHubREADME-Badge/badge.png?branch=master)](https://coveralls.io/r/fayland/perl-Dist-Zilla-Plugin-GitHubREADME-Badge?branch=master)
[![Gitter chat](https://badges.gitter.im/fayland/perl-Dist-Zilla-Plugin-GitHubREADME-Badge.png)](https://gitter.im/fayland/perl-Dist-Zilla-Plugin-GitHubREADME-Badge)
[![Kwalitee status](http://cpants.cpanauthors.org/dist/Dist-Zilla-Plugin-GitHubREADME-Badge.png)](http://cpants.charsbar.org/dist/overview/Dist-Zilla-Plugin-GitHubREADME-Badge)
[![GitHub issues](https://img.shields.io/github/issues/fayland/perl-Dist-Zilla-Plugin-GitHubREADME-Badge.svg)](https://github.com/fayland/perl-Dist-Zilla-Plugin-GitHubREADME-Badge/issues)

# NAME

Dist::Zilla::Plugin::GitHubREADME::Badge - Dist::Zilla - add badges to github README.md

# SYNOPSIS

    # in dzil.ini
    [GitHubREADME::Badge]

    # configure it yourself
    [GitHubREADME::Badge]
    badges = travis
    badges = coveralls
    badges = gitter
    badges = cpants
    badges = issues
    badges = github_tag
    badges = license
    badges = version
    place = bottom

# DESCRIPTION

Dist::Zilla::Plugin::GitHubREADME::Badge is to add badges in github README.md

# CONFIG

## badges

Currently only travis, coveralls, gitter, cpants and GH issues are supported. but patches welcome.

default goes to travis, coveralls and cpants.

    [GitHubREADME::Badge]
    badges = travis
    badges = coveralls
    badges = gitter
    badges = cpants

## place

    [GitHubREADME::Badge]
    place = bottom

top or bottom. default to top

# SEE ALSO

[Minilla](https://metacpan.org/pod/Minilla), [Dist::Zilla::Plugin::TravisCI::StatusBadge](https://metacpan.org/pod/Dist::Zilla::Plugin::TravisCI::StatusBadge)

# AUTHOR

Fayland Lam <fayland@gmail.com>

# COPYRIGHT

Copyright 2014- Fayland Lam

# LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
