#!/bin/bash
if [ $# -eq 0 ]; then
    echo "No arguments supplied"
    exit 1
fi

file=../examples/$1

echo "Compiling $file"

cd ../src
antlr4-run < $file

cp Output.java ../examples/
cd ../examples