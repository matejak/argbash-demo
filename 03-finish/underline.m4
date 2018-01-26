#!/bin/bash

# DEFINE_SCRIPT_DIR()
# ARG_POSITIONAL_SINGLE([phrase],[What to underline])
# ARG_OPTIONAL_BOOLEAN([interleaved],[i],[Whether to draw interleaved line],[off])
# ARG_POSITIONAL_SINGLE([character],[The line element character],[-])
# ARG_HELP([This program tells you size of specified files in given directories in units you choose.])
# ARGBASH_GO()

# [ <-- needed because of Argbash

# Taken from http://argbash.readthedocs.io/en/stable/example.html#wrapping-scripts

to_underline="$_arg_phrase"

underline_len="$(printf "%s" "$to_underline" | wc -m)"
interleaved_option=
test "$_arg_interleaved" = on && interleaved_option="--interleaved"

# print
echo "$to_underline"
# underline
"$script_dir/draw-line" "$_arg_character" --length "$underline_len" $interleaved_option
# make newline
echo

# ] <-- needed because of Argbash
