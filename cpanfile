requires 'Dist::Zilla';
requires 'Path::Tiny';

on test => sub {
    requires 'Test::More', '0.96';
    requires 'Test::Pod';
};
