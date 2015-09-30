use strict;
use warnings;
use lib 't/lib';
use TestBadges;

for my $name ( qw(
  README.md
  README.mkdn
  README.markdown
) ){
  my $test = build_dist({}, { name => $name });

  is $test->{readme}->basename, $name, "file named $name";

  my $content = $test->{readme}->slurp_raw;
  my $pattern = qr/\[!/;

  like $content, $pattern, "badges in $name";
}

done_testing;
