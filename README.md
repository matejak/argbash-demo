# argbash-demo

## Getting Argbash

To get argbash, you can:

* Use the `get-argbash` script, which will download and unpack a release.
  Then, call the `argbash` executable script by specifying `argbash-<version goes here>/bin/argbash`

* Use `argbash-docker` as the argbash executable script. It will download images ~ 30 MB when called for the first time.

* Visit https://argbash.io/generate to use the online generator.

## Templates

* `ls-help`: The version that has parsing code with minimal footprint.
* `ls-help-standard`: What you get by default - getopts-like option stacking is enabled and you can use both whitespace and `=` as option-value delimiter.
* `ls-help-pimped`: You get some type checking as well as guard against passing options instead of values - althoug passing `-w -A` as argument will fail due to the type check, it would fail even without the type check as `-A` is a valid option and it appears where argument value should be.

## Useful links

* Documentation: http://argbash.readthedocs.io
