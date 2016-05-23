# NAME

Test2::Plugin::NoWarnings - Fail if tests warn

# VERSION

version 0.02

# SYNOPSIS

    use Test2::Bundle::Extended;
    use Test2::Plugin::NoWarnings;

    ...;

# DESCRIPTION

Loading this plugin causes your tests to fail if there any warnings while they
run. Each warning generates a new failing test and the warning content is
outputted via `diag`.

This module uses `$SIG{__WARN__}`, so if the code you're testing sets this,
then this module will stop working.

# ECHOING WARNINGS

By default, this module suppresses the warning itself so it does not go to
`STDERR`. If you'd like to also have the warning go to `STDERR` untouched,
you can ask for this with the `echo` import argument:

    use Test2::Plugin::NoWarnings echo => 1;

# SUPPORT

Bugs may be submitted through [the RT bug tracker](http://rt.cpan.org/Public/Dist/Display.html?Name=Test2-Plugin-NoWarnings)
(or [bug-test2-plugin-nowarnings@rt.cpan.org](mailto:bug-test2-plugin-nowarnings@rt.cpan.org)).

I am also usually active on IRC as 'drolsky' on `irc://irc.perl.org`.

# DONATIONS

If you'd like to thank me for the work I've done on this module, please
consider making a "donation" to me via PayPal. I spend a lot of free time
creating free software, and would appreciate any support you'd care to offer.

Please note that **I am not suggesting that you must do this** in order for me
to continue working on this particular software. I will continue to do so,
inasmuch as I have in the past, for as long as it interests me.

Similarly, a donation made in this way will probably not make me work on this
software much more, unless I get so many donations that I can consider working
on free software full time (let's all have a chuckle at that together).

To donate, log into PayPal and send money to autarch@urth.org, or use the
button at [http://www.urth.org/~autarch/fs-donation.html](http://www.urth.org/~autarch/fs-donation.html).

# AUTHOR

Dave Rolsky <autarch@urth.org>

# COPYRIGHT AND LICENCE

This software is Copyright (c) 2016 by Dave Rolsky.

This is free software, licensed under:

    The Artistic License 2.0 (GPL Compatible)
