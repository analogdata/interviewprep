#!/bin/bash

# Path to the parent directory containing the folders
PARENT_DIR="/Users/rajathkumar/analogdata/interviewprep"

# Loop through each folder in the parent directory
for folder in "$PARENT_DIR"/*; do
  if [ -d "$folder" ]; then
    # Check if the README.md file exists in the folder
    if [ ! -f "$folder/README.md" ]; then
      # Extract the folder name
      folder_name=$(basename "$folder")
      # Create the README.md file with the folder name as the title
      echo "# $folder_name" > "$folder/README.md"
      echo "Created README.md in $folder"
    else
      echo "README.md already exists in $folder"
    fi
  fi
done
