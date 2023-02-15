import sys
import os

assert len(sys.argv) == 2, "\n\n\nformat: python3 asm_compiler.py PROGRAM_NAME\n\n"  # assert 1 argument

commands = ["pcompile *.s","ldpic32 *.hex -p /dev/ttyS5", "pterm -p /dev/ttyS5"]
new_commands = []

for line in commands:                               # replace and create array from commands string
    line = line.replace("*", sys.argv[1])
    new_commands.append(line)


for x in new_commands: 
    os.system(x)
    os.system("sleep 1")
