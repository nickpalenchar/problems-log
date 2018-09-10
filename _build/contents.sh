#!/bin/bash

# Automatically generates a table of contents at the top of a md file. It overwrites old contents used with this script
# 
# USAGE
# contests.sh file
#
# file - the name of the file to generate the contents
#
# if -f is given, the file is overwritten and there is no extra output needed.

# remove old contents
cat $1 | sed '/^## Contents/,/\-\-\-/d'

# read and update contents
# TODO
