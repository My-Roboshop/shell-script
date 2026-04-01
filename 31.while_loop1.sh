#!/bin/bash

while IFS= read -r line; do
    # Process each line here
    echo "Processing line: $line"
    # Example: you can perform other operations with the $line variable
    # For instance:
    # some_command "$line"
    # if [[ "$line" == "specific_text" ]]; then
    #    echo "Found specific text!"
    # fi
done < 27.script1.sh