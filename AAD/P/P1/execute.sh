if [ -z "$1" ]; then
   echo "No argument supplied"
   exit 1
fi

printf "\nCompiling and executing $1 no optimization\n"

for i in {1..5}; do
   gcc $1 -o output -lm
   ./output
   read -p "Press enter to continue"
done

printf "\nCompiling and executing $1 with optimization\n"

for i in {1..5}; do
   gcc -O3 -march=native $1 -o output_o3 -lm
   ./output_o3
   read -p "Press enter to continue\n"
done

