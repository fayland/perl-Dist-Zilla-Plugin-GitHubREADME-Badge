[![Build Status](https://travis-ci.org/fayland/perl-Dist-Zilla-Plugin-GitHubREADME-Badge.svg?branch=master)](https://travis-ci.org/fayland/perl-Dist-Zilla-Plugin-GitHubREADME-Badge)
[![Coverage Status](https://coveralls.io/repos/fayland/perl-Dist-Zilla-Plugin-GitHubREADME-Badge/badge.png?branch=master)](https://coveralls.io/r/fayland/perl-Dist-Zilla-Plugin-GitHubREADME-Badge?branch=master)
[![Gitter chat](https://badges.gitter.im/fayland/perl-Dist-Zilla-Plugin-GitHubREADME-Badge.png)](https://gitter.im/fayland/perl-Dist-Zilla-Plugin-GitHubREADME-Badge)

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

# DESCRIPTION

Dist::Zilla::Plugin::GitHubREADME::Badge is to add badges in github README.md

Currently only travis, coveralls and gitter are supported. but patches welcome.

default goes to travis and coveralls.

# SEE ALSO

[Minilla](https://metacpan.org/pod/Minilla), [Dist::Zilla::Plugin::TravisCI::StatusBadge](https://metacpan.org/pod/Dist::Zilla::Plugin::TravisCI::StatusBadge)

# AUTHOR

Fayland Lam <fayland@gmail.com>

# COPYRIGHT

Copyright 2014- Fayland Lam

# LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# SEE ALSO
