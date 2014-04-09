use strict;
use warnings;
use Test::More tests => 4;
use Path::Canonical;

SKIP: {
    skip "Those tests are working on windows", 4 if $^O ne 'MSWin32';
    is(canon_filepath('c:\\path/to/../from/file.txt'), 'c:\\path\\from\\file.txt');
    is(canon_filepath('c:/\\path/to/../..\\..//file.txt'), 'c:\\file.txt');
    is(canon_filepath('\\\\path/to/../from/file.txt'), '\\\\path\\to\\from\\txt');
    is(canon_filepath('\\\\path/to/../../file.txt'), '\\\\path\\to\\file.txt');
}
