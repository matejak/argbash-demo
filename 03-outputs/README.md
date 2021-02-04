All great outputs
=================

What can Argbash do for you?
So far, you came in contact with a Bash script, but there are more:

- Classical POSIX script,
- manpage RST source,
- docopt output, and
- bash completion.


POSIX script
------------

Many conservative Bash users like `getopts`, and they appreciate how the parsing code can be minimized.
POSIX scripts have limitations though:

- Long options are not supported, short options are mandatory (`getopts` limitation), and
- only single-valued arguments are supported (POSIX doesn't support arrays).

Let's examine our `ls-help` scipt in this directory - all optional arguments have short options, so we can see how a well-behaved POSIX script would look like:

```
argbash -i -t posix-script ls-help
./posix-script -h
```


Manpage
-------

If you use Argbash, then you declare quite a lot of information about the script's interface, so why not to leverage that to create not only a help message, but a manpage?
As manpages are not easy to read and modify, Argbash leverages the `rst2man` utility that converts [reStructuredText](https://docutils.sourceforge.io/docs/user/rst/quickref.html) documents to a manpage.

Argbash generates two files - one is based on information extracted from the script, and is supposed to be read-only and rewritten whenever the script interface changes, while the other one (the definitions file) is supposed to be fine-tuned by humans, and handled with greater care.

First of all, let's generate those two files:

```
argbash -t manpage --strip all -o manpage.rst ls-help
argbash -t manpage-defs --strip all -o manpage-defs.rst ls-help
```

Check out the `manpage-defs.rst` and fill in all of the obvious stuff.
Then, generate a manpage, and view it:

```
rst2man manpage.rst > manpage
man ./manpage
```


Docopt
------

At a first glance, `docopt` is just a fancy help format, but that's not all - it is a quasi-standard for description of command-line interface.
Argbash supports it, so let's check it out!

```
argbash -t docopt --strip all ls-help
```

It looks as a nicely-formatted help message, but copy-paste it into an [online docopt interpreter](http://try.docopt.org/).
Then, you can compose a command-line and watch the website to parse it into a JSON structure.


Completion
----------

Everybody wants a Bash completion for their script.
It is quite difficult to make a completion tailor-made for your script, but one can at least suggest options, right?
Let's check it out. Generate a Bash completion snippet for `ls-help`, and source it:

```
argbash -t completion --strip all -o _ls-help ls-help
. _ls-help
```

and type `./ls-help -<TAB>` and see what happens.


Conclusion
----------

Argbash is not only for arguments, but it can do so much more!
Thank you for making it so far. Hopefully you will find the tool useful!
