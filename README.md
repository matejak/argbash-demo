# argbash-demo

## Getting Argbash

To get argbash, you can:

* Use the `get-argbash` script, which will download and unpack a release.
  Then, call the `argbash` executable script by specifying `argbash-<version goes here>/bin/argbash`

* Use `argbash-docker` as the argbash executable script. It will download images ~ 30 MB when called for the first time.

* Visit https://argbash.io/generate to use the online generator.

## Examples

### templates - proof of concept

* `ls-help`: The version that has parsing code with minimal footprint.
* `ls-help-standard`: What you get by default - getopts-like option stacking is enabled and you can use both whitespace and `=` as option-value delimiter.
* `ls-help-pimped`: You get some type checking as well as guard against passing options instead of values - althoug passing `-w -A` as argument will fail due to the type check, it would fail even without the type check as `-A` is a valid option and it appears where argument value should be.

### draw-line - advanced features

* `draw-hline`: A script that draws horizontal lines.
* `underline`: A script that underlines a supplied phrase. Calls `draw-line`.

* `argbash/draw-hline.m4`: Template for the argbash-powered line drawer.
* `argbash/underline.m4`: Argbash-powered underline, wraps argbash-powered line drawer.

## Useful links

* Home: https://argbash.io
* Documentation: http://argbash.readthedocs.io
* Latest release: https://github.com/matejak/argbash/releases/latest
