# argbash-demo

## Getting Argbash

To get argbash, you can:

* Use the `get-argbash` script, which will download and unpack a release.
  Then, call the `argbash` executable script by specifying `argbash-<version goes here>/bin/argbash`

* Use `argbash-docker` as the argbash executable script. It will download images ~ 30 MB when called for the first time.

* Visit https://argbash.io/generate to use the online generator.

## Examples

### 01-intro

See some very simple templates that illustrate the wide range of Argbash capabilities.

### 02-task

There are two scripts --- the first one draws a line in the terminal, and the second one, underlines a user-supplied phrase (by calling the first one).
Let's try to convert those two scripts to Argbash argument processing, so they gain a robust command-line interface!

### 03-finish

As you have the scripts from the previous example, figute out how to wrap a subset of the `draw_line` interface, so it becomes part of the by the `underline` interface.

## Useful links

* Home: https://argbash.io
* Documentation: http://argbash.readthedocs.io
* Latest release: https://github.com/matejak/argbash/releases/latest
