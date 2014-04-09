# NAME

Path::Canonical - Simply utility function to get canonical paths.

# SYNOPSIS

    use Path::Canonical;

# DESCRIPTION

Path::Canonical is simply utility function to get canonical paths.
Cwd::abs\_path are using realpath to get canonical paths. So the file should be exists.
But if you want to write web application and handle requset URIs, you need to avoid adirectory traversal.

# LICENSE

Copyright (C) mattn.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

mattn <mattn.jp@gmail.com>
