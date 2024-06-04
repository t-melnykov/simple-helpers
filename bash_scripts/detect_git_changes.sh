#!/bin/bash

# Variables
		build_front="false";
		regex_string="${FRONT_END_RESOURCES}";

		strpos() { 
		haystack=$1
		needle=$2
		x="${haystack%%"$needle"*}"
		[[ "$x" = "$haystack" ]] && echo -1 || echo "${#x}"
		}

		# Logic
		if [[ -z "$regex_string" ]]; then
		build_front="false";
		else
		# Loop changed files
		git_diff=$(git diff --name-only HEAD^ HEAD);
		while IFS= read -r git_line;
		do
			# Search by regex
			git_line=$(echo "$git_line" | tr -d '\n\r');
			while IFS= read -r rex_exp;
			do
			rex_exp=$(echo "$rex_exp" | tr -d '\n\r');
			pos=$(strpos "$git_line" "$rex_exp");
			echo "Pos: $pos";
			if [[ $pos != "-1" ]]; then
				build_front="true";
				break 2;
			fi;
			done <<< "$regex_string";
		done <<< "$git_diff";
		fi;
		echo "BUILD_FRONT=$build_front" >> $GITHUB_ENV