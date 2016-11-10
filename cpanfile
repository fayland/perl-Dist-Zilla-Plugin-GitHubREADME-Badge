requires 'perl', '5.0014';
requires 'Dist::Zilla';
requires 'Path::Tiny';
requires 'Moose';
requires 'Moose::Util::TypeConstraints';
requires 'namespace::autoclean';

on test => sub {
    requires 'Test::More', '0.96';
    requires 'Test::Pod';
};
