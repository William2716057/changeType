# Change File Extensions Script

This script renames all `.txt` files in a specified directory to `.py` files.

## Usage

This shell script changes the file extension of all `.txt` files in the current directory to `.py`. 

## Prerequisites

- A Unix-like environment (Linux, macOS, or Git Bash on Windows).
- Bash shell.

## Installation

1. Clone the repository or download the script file.
2. Make the script executable by running the following command:
    ```sh
    chmod +x changeFiles.sh
    ```

## Usage

1. Open a terminal or Git Bash.
2. Navigate to the directory where the script is located.
3. Run the script:
    ```sh
    ./changeFiles.sh
    ```

## Script Details

### changeFiles.sh

```sh
#!/bin/bash

changeFiles() {
    local directory=$1
    local suffix=$2

    for filepath in "$directory"/*.txt; do
        if [ -e "$filepath" ]; then
            local filename=$(basename "$filepath" .txt)
            local newName="${filename}${suffix}"
            mv "$filepath" "$directory/$newName"
        fi
    done

    echo "Text files changed to Python files"
}

directoryPath=$(pwd)
suffix='.py'

changeFiles "$directoryPath" "$suffix"
