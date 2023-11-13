#!/bin/bash

# Clean up all files and directories
find . -mindepth 1 ! -name "*.sh" -exec rm -rf {} +

# Create 20 text files
for i in {1..20}; do
    echo "$i.txt" > "$i.txt"
done
ls

# Remove files containing '4'
find . -type f -name '*4*' -exec rm {} +
echo "Number of files containing '4': $(ls | grep -c 4)"

# Create '15.txt' with content
echo "hello world!" > 15.txt
echo "15.txt: $(cat 15.txt)"

# Clean up all files and directories
find . -mindepth 1 ! -name "*.sh" -exec rm -rf {} +

for ((i = 1; i < 5; i++)); do
    x="./"
    for ((j = 0; j < i; j++)); do
        x="$x/$i"
    done
    mkdir -p "$x"
    touch "$x/$i.txt"
done

# Create symbolic links for '.txt' files
find . -type f -name '*.txt' -exec ln -s {} . \;
ls -l
