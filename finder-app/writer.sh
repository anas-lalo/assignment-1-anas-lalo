#!/bin/sh

# Check if both arguments are provided
if [ $# -ne 2 ]; then
    echo "Error: Incorrect number of arguments"
    echo "Usage: $0 <writefile> <writestr>"
    exit 1
fi

writefile="$1"
writestr="$2"

# Create directory path if it doesn't exist
mkdir -p "$(dirname "$writefile")"

# Write content to file
echo "$writestr" > "$writefile"

# Check if file was created successfully
if [ $? -ne 0 ]; then
    echo "Error: Could not create file '$writefile'"
    exit 1
fi

exit 0
