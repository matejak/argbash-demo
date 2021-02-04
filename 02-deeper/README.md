Dive Deeper
===========

This exercise asusmes that you are not a complete stranger for Argbash, but open the [Argbash documentation](https://argbash.readthedocs.io/en/latest/guide.html#argbash-api) in your browser tab.
Check out the `ls-help` script - that one supports `-w` and `-A` optional arguments, and it accepts any number of positional arguments.
Given those arguments, it prints what the well-known `ls` utility would do if invoked with such arguments.


Commented mode
--------------

Are you worried that you won't understand the generated output?
Then the Argbash Commented Mode is exactly for you!
Generate the `ls-help` script, passing the `-c` argument to Argbash:

```
argbash -c -o ls-help-new ls-help
```

Now, when you open `ls-help-new`, you can see that the generated code contains helpful comments.


Var args
--------

Argbash has `ARG_POSITIONAL_SINGLE`, `ARG_POSITIONAL_MULTI`, `ARG_POSITIONAL_INF` and `ARG_LEFTOVERS` macros that can help you with cases when your script accepts a positional argument that is defined by multiple values.
Try to check out the documentation and see how those work when you rewrite the original `ARG_POSITIONAL_INF`, and you regenerate the script using Argbash.
Especially pay attention to the help message!


Terminator
----------

What does the `ARG_POSITIONAL_DOUBLEDASH` do?
The POSIX convention defines the Terminator - two dashes terminate parts of the command-line where optional arguments are expected from the part where there are only positional arguments.
This is useful in cases when you can come in touch with positional arguments that can look like directories.

For example, if you have an empty directory and you create a file `-rf` and a directory `z`, then if you execute `rm *`, you would expect that `-rf` is deleted, and `z` is preserved, as it is a directory. In reality, `-rm` stays there, while `z` and its contents are wiped out.

The macro implements support for the double dash, so you can try how the output of `ls-help-new -- -w 80 x` differs from `ls-help-new -- -w 80 x` when the macro is present, and how it is when you take it away and you regenerate the script.

Typing
------

Bonus part - try to [figure out](https://argbash.readthedocs.io/en/latest/guide.html#typing-macros) how to make Argbash understand that argument to `-w` is supposed to be a positive integer.


Conclusion
----------

You went somehow deeper, but, to some degree, you are still scratching the surface.
But those should be the next 20% besides the leading 20% of the Pareto rule, so congratulations anyway.
