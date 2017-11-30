#!/bin/bash
# ARG_OPTIONAL_SINGLE([length],[l],[Line length],[80])
# ARG_OPTIONAL_BOOLEAN([interleaved],[i],[Whether to draw interleaved line],[off])
# ARG_POSITIONAL_SINGLE([character],[The line element character],[-])
# ARG_TYPE_GROUP([pint],[count],[length])
# ARG_HELP([])
# ARGBASH_GO()

# [ <-- needed because of Argbash

line_len="$_arg_length"
line_char="$_arg_character"
interleaved="$_arg_interleaved"

if test "$interleaved" = on; then
	print_iter=$(( line_len / 2 ))
	print_char="$line_char "
else
	print_iter="$line_len"
	print_char="$line_char"
fi

for _ in $(seq 1 $print_iter); do
	printf "%s" "$print_char"
done

echo

# ] <-- needed because of Argbash
