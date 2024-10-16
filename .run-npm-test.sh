#!/bin/bash

# Check if the input path is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <path> [additional npm arguments]"
  exit 1
fi

# Extract the input path
input_path=$1
shift # Shift the arguments to remove the first one (input path)

# Extract the package name
package_name=$(echo "$input_path" | sed -n 's|^ui/packages/\([^/]*\)/.*|\1|p')

# Run the npm test command with the extracted package name, input path, and additional arguments
npm run test -w "ui/packages/$package_name" -- "$input_path" "$@"
