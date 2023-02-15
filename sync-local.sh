#!/bin/bash

# Exit any command returns a non zero status
set -e

# Load config variables from dotfiles.config
. ./dotfiles.config

err() {
	echo "$*" >&2; exit 1;
}

sync_nvim() {
	if [[ -z "$NVIM_SOURCE_PATH" ]];
	then
		err "Source path for nvim config is empty"
	fi

	NVIM_DESTINATION_FINAL="$2" && [[ -z "$2" ]] && NVIM_DESTINATION_FINAL="$NVIM_DESTINATION_PATH"

	if [[ -z "$NVIM_DESTINATION_FINAL" ]];
	then
		err "No destination file specified"
	fi

	if (cp "$NVIM_SOURCE_PATH" "$NVIM_DESTINATION_FINAL");
	then
		echo "Successfully synced nvim into $NVIM_DESTINATION_FINAL"
	else
		err "Cannot sync files."
	fi
}

sync_tmux() {
	err "Not implemented yet"
}

case $1 in
	"nvim")
		sync_nvim "$@"
		;;
	"tmux")
		sync_tmux "$@"
		;;
	*)
		err "No arguments or command doesn't exist"
		;;
	esac
