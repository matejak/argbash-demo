#!/bin/bash

# DEFINE_SCRIPT_DIR()
# ARG_POSITIONAL_SINGLE([phrase],[What to underline])
# ARGBASH_WRAP([draw-line],[length])
# ARG_HELP([This program tells you size of specified files in given directories in units you choose.])
# ARGBASH_GO()

# [ <-- needed because of Argbash

# Taken from http://argbash.readthedocs.io/en/stable/example.html#wrapping-scripts

to_underline="$_arg_phrase"

underline_len="$(printf "%s" "$to_underline" | wc -m)"

# print
echo "$to_underline"
# underline
"$script_dir/draw-line" --length "$underline_len" "${_args_draw_line[@]}"
# make newline
echo

# ] <-- needed because of Argbash
