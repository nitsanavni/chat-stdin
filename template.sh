#!/bin/bash

# written this way: https://chat.openai.com/share/ed56c796-5b28-4498-b488-69a7aec9006a

# Read from stdin line by line
while IFS= read -r line; do
    # Check if line contains reference to another file
    if [[ $line == *@* ]]; then
        # Extract referenced file name
        ref_file=$(echo $line | grep -oP '(?<=@)[^ ]+' | tr -d ' ')

        # Check if referenced file exists
        if [ -f "$ref_file" ]; then
            # Embed the contents of referenced file
            cat "$ref_file"
        else
            echo "Referenced file $ref_file not found!" >&2
        fi
    else
        # Print the original line
        echo $line
    fi
done
