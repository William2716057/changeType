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

	echo "Text files changed to python"
}

directoryPath=$(pwd)
suffix='.py'

changeFiles "$directoryPath" "$suffix"
