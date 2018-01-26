Converting scripts to Argbash
=============================

You can see the ``underline`` and ``draw_line`` scripts.
They use environment variables to parametrize their execution.
The goal is to relpace that interface by Argbash functionality.

Challenges
----------

#. Use ``argbash-init`` to generate an empty template, and then copy the script's body to it.
   Don't trash the variables that define the script's behavior - use them as a point where the new Argbash interface and the old environment-variable one connect.
   Remember, you may want to keep backward compatibility, or you may want to process the passed values before using them, so don't burn old bridges.

#. Check out various modes of operation of ``argbash-init`` --- it can produce templates with different level of parsing code complexity.

#. Check out the arguments value type support.

#. Check out the basic Bash completion generation for the two scripts.
