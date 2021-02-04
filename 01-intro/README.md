Say Hello to Argbash
====================

Check out the `draw-line` script. It can draw lines composed of characters in the terminal.
There is a nice section at the beginning of the script that allows you to parametrize the script by overwriting variable assignments.
So let's use Argbash to provide a convenient command-line interface to this utility.


Quickstart
----------

How to do this?
There is a script generator utility available.
So let's look at this draw-line script, and check out what arguments it accepts:

- Character the line is composed of.
- Line length.
- Interleaved line mode toggle. 

The POSIX standard introduces concept of positional and optional arguments.

Positional arguments are typically required (although it is OK if they have a default value), while
optional arguments are preceeded by the *option* (e.g. `-l 80`) and if you omit them, the script should to what one would expect of it.

Therefore, let's say that draw-line accepts a positional argument `character`, and optional arguments `length` and `interleaved`.
So let's use the `argbash-init` utility that comes with Argbash:

```
argbash-init --pos character --opt length --opt-bool interleaved new-draw-line 
```

You can examine the newly-created `new-draw-line` - you can see some kind of a header.

Let's transform that into a script to see what it can do - run Argbash over it!

```
argbash new-draw-line -o new-draw-line
```

The file has been regenerated, and the header got interpreted into some serious Bash script.
We know that it can't do anything, but maybe it could at least print help?
Let's check it out!

```
./new-draw-line -h
```


Port script to Argbash
----------------------

Our old `draw-line` is written in Argbash-friendly way - there is a very clear bridge between the script's interface and functionality.
When we want to interconnect Argbash with the script, it's enough to just focus on its leading lines that contain variable definitions.

Copy contents of that script, and paste to the indicated place close to the bottom of `new-draw-line`, and modify variable assignments accordingly.
For example, `line_len="$_arg_length"` et cetera - figure that out!

You should be able to call `./new-draw-line --length 40 -` to draw 40 character-wide line of dashes.


Tune the script further
-----------------------

What about getting a meaningful help message out of the script?
What if you are typically interested in dashed lines 80 characters long? 
What if you would like to use short options?

That's no problem for Argbash! You just need to edit the header section of `new-draw-line`.
How would you do that? Check out [Argbash documentation](https://argbash.readthedocs.io/en/latest/guide.html#argbash-api).
The `ARG_POSITIONAL_SINGLE` macro acepts help message and default argument value as arguments, so add them and check out how the help message reacts to this.
Similarly, `ARG_OPTIONAL_SINGLE` allows you to specify the short option, and help message and default value as well.
Go for it!

When you are done, re-run Argbash over the file:

```
argbash -i new-draw-line
```


Conclusion
----------

You have learned how to port a script to Argbash, how to do it quickly, and how to build upon the generated content.
Continue the dive in further lesson!
