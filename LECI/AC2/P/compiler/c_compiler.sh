#/bin/sh
echo "(Type the program desired)\n\n<Type help if needed>"
read option


if [ $option = "help" ]
then
   echo "\n\n\nThis program is a compiler for DETPIC32-IO and it needs only 2 things, the 'compiler.sh' and 'settings_compiler.txt'. When the program is launched just type the name of the program and it will execute. There is only 1 exception it wont run if there is more than one program with the same name.\n\nPress one of the options:\n   1. To choose extension(c or asm)\n   1. To change USB port\n   2. To change directory"
   read help_option


else
    path_to_program=$(find ../. -name "prog85.c")
    sleep 1
    pcompile $path_to_program
    sleep 1
    ldpic32 *.hex -p /dev/ttyS5

fi