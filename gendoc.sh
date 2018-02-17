#!/bin/bash

case $# in
	0)
		visibility='-protected'
		title='Public'
		;;
	1)
		case "$1" in
			int)
				visibility='-private'
				title='Private'
				;;
			ext)
				visibility='-protected'
				title='Public'
				;;
			*)
				echo "$(basename -- "$0"): Invalid mode (must be 'int' or 'ext'): $1" >&2
				exit 1
				;;
		esac
		;;
	2)
		echo "Usage: $(basename -- "$0") [int|ext]" >&2
		exit 1
		;;
esac

javadoc "$visibility" -windowtitle "ArcEye $title API" @argfile
