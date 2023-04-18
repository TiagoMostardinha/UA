#!/bin/bash

# Basics for Antlr4 Project:
# 1. antlr4-build
# 2. antlr4-test
# 3. antlr4-visitor <grammar> <Interpreter> T
# 4. antlr4-main -v <Interpreter>.java -i -f
# 5. antlr4-build
# 6. antlr4-run

#antlr4-test Calculator program -gui < test
#antlr4-test Frac program < frac.txt

# Build and Run Antlr4 Project

# Check parameters
if [ "$(dirname $(pwd))" != "/home/tiago/DiscoD/UA/C/P/src" ]; then
    echo "Error: You are in the wrong directory"
    exit 1
fi

if [ -z "$(ls -qA)" ]; then
  echo "The current directory is empty"
  exit 1
fi

if [ $# -eq 3 ]; then
    if [ $# -ne 3 ] && [ $# -ne 0 ]; then
        echo "Usage: antlr4-script <grammar> <Interpreter> <T>"
        exit 1
    fi

    if [ ! -f $1.g4 ]; then
        echo "Creating grammar..."
        code $1.g4
        exit 0
    fi

    if [ ! -f $2.java ]; then
        # Build Antlr4 Project
        antlr4-build

        if [ $? -ne 0 ]; then
            echo "Error: antlr4-build failed"
            exit 1
        fi

        # Create Visitor for grammar
        printf "\nCreating $2...\n-------------------------------------------------------------\n"
        antlr4-visitor $1 $2 $3
        antlr4-main -v $2.java -i -f

        code $2.java
        exit 0
    fi

fi


# Build Antlr4 Project and Test
antlr4-build
    
if [ $? -ne 0 ]; then
    echo "Error: antlr4-build failed"
    exit 1
fi

# Run 
printf "Running...\n-------------------------------------------------------------\n"
antlr4-run
if [ $? -ne 0 ]; then
    echo "Error: antlr4-run failed"
fi

