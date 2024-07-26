#!/bin/bash

# Path to the parent directory containing the folders
PARENT_DIR="/Users/rajathkumar/analogdata/interviewprep"

# Output file
OUTPUT_FILE="directory_list.md"

# Clear the output file if it exists
> "$OUTPUT_FILE"

# Loop through each folder in the parent directory
for folder in "$PARENT_DIR"/*; do
  if [ -d "$folder" ]; then
    folder_name=$(basename "$folder")
    if [[ $folder_name == *QnA ]]; then
      base_name="${folder_name%QnA}"
      echo "- [$base_name](./$folder_name)" >> "$OUTPUT_FILE"
    fi
  fi
done

echo "Directory list has been written to $OUTPUT_FILE"
