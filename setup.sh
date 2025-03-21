#!/bin/bash

# Ensure EyeWitness is installed
if ! command -v eyewitness &> /dev/null; then
    echo "Error: EyeWitness is not installed. Install it from https://github.com/FortyNorthSecurity/EyeWitness"
    exit 1
fi

# Loop through all .txt files in the current directory
for file in *.txt; do
    [ -e "$file" ] || continue  # Skip if no .txt files exist
    
    # Create a directory with the same name as the input file (without extension)
    output_dir="screenshots/${file%.txt}"
    mkdir -p "$output_dir"
    
    # Run EyeWitness on the URLs from the text file and save screenshots in the respective directory
    eyewitness --web -f "$file" -d "$output_dir" --no-prompt
    echo "Screenshots saved for $file in $output_dir"
done

echo "All screenshot capturing completed!"
