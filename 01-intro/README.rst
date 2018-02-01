Introduction
============

This directory contains templates.
Those are consumable by Argbash, which produces a script out of them.

The scripts here mimic the well-known ``ls`` command.
When executed, they say what ``ls`` would do if you executed it in the same way.
e.g. as ``ls`` lists files in the current directory, ``ls-help`` outputs ``Will list directories: '.',``
Long and short versions of options ``-A`` and ``-w <width>`` are supported.

Contents
--------

* ``ls-help``: Template with minimal parsing functionality. The generated parsing code will be terse.
* ``ls-help-standard``: Template of a script with default settings. Good compromise between features and parsing code complexity.
* ``ls-help-pimped``: Template of a script with luxurious parsing functionality.

Capabilities
------------

=======================         ===========     ============    =========
Feature\cathegory               minimal         standard        pimped
=======================         ===========     ============    =========
Whitespace delimiter            Y               Y               Y
Equals delimiter                N               Y               Y
Short option stacking           N               Y               Y
Double dash                     N               N               Y
Argument value types            N               N               Y
Typo guard                      N               N               Y
=======================         ===========     ============    =========

Challenges
----------

Check out how the Argbash animal behaves:

* Generate script from a script, change the result, repeat, and observe, what has changed.
* Strip some options from the template, regenerate the script, and observe the parsing code change.
* Check out the commented mode of the ``argbash`` utility.
* Feed the generated script with invalid arguments and observe the error messages.
