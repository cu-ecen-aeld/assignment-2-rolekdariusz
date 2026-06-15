#!/bin/sh

filesdir=$1

searchstr=$2

if [ $# -ne 2 ]; then
    echo "Incorrect amount of arguments, requires 2."
    exit 1
fi

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "At leats one argument has zero length."
    exit 1
fi

if [ ! -d "$filesdir" ]; then
    echo "filesdir($filesdir) argument is not directory"
    exit 1
fi

num_of_files=0
num_of_files=$( find "$filesdir" -type f | wc -l )

num_of_lines=0
num_of_lines=$( grep -r -o "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $num_of_files and the number of matching lines are $num_of_lines" 