#!/usr/bin/env perl

use strict;
use warnings;
use lib 't/lib';
use TestBadges;

my $nl = qr/(?:\r\n|\r|\n)/;
my $badges = qr/(\[[^\r\n]+${nl})+/;

subtest 'after build' => sub {
  my $test = build_dist({}, {
    plugins => ['PhaseReadme'],
    content => 'readme'
  });

  like $test->{readme}->slurp_raw,
    qr/$badges${nl}+build${nl}+readme${nl}+build/m,
    'badges added after build';

  unlike $test->{readme}->slurp_raw, qr/release/, 'not yet released';

  $test->{zilla}->release;

  like $test->{readme}->slurp_raw,
    qr/release${nl}+$badges${nl}+build${nl}+readme${nl}+build${nl}+release/m,
    'badges added between build and release';
};

subtest 'after release' => sub {
  my $test = build_dist({phase => 'release'}, {
    plugins => ['PhaseReadme'],
    content => 'readme'
  });

  unlike $test->{readme}->slurp_raw, $badges,
    'dist built, badges not yet added';

  $test->{zilla}->release;

  like $test->{readme}->slurp_raw,
    qr/$badges${nl}+release${nl}+build${nl}+readme${nl}+build${nl}+release/m,
    'badges added after release';
};

done_testing;
