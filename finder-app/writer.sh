#!/bin/sh

writefile_full_path=$1

writestr=$2

if [ $# -ne 2 ]; then
    echo "Needs 2 args."
    return 1
fi

writefile_path=$(dirname "$writefile_full_path")

writefile_filename=$(basename "$writefile_full_path")


if [ ! -d "$writefile_path" ]; then
    mkdir -p "$writefile_path"
else
    echo "dir already exist"
fi

echo "$writestr" > "$writefile_full_path"