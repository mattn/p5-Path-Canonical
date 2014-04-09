use strict;
use warnings;
use Test::More tests => 3;
use Path::Canonical;

is('/var/tmp', canonpath('/var/tmp/./foo/../bar/..'));
is('/var/tmp', canonpath('/var/tmp'));
is('/foo/bar/baz', canonpath('/var//../../../foo/bar/baz'));
