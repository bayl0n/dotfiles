#!/bin/bash

# Exit any command returns a non zero status
set -e

# Load config variables from dotfiles.config
. ./dotfiles.config

err() {
	echo "$*" >&2; exit 1;
}

backup() {
	echo "You wan't me to back you up, buddy"
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
	if [[ -z "$TMUX_SOURCE_PATH" ]];
	then
		err "Source path for nvim config is empty"
	fi

	TMUX_DESTINATION_FINAL="$2" && [[ -z "$2" ]] && TMUX_DESTINATION_FINAL="$TMUX_DESTINATION_PATH"

	if [[ -z "$TMUX_DESTINATION_FINAL" ]];
	then
		err "No destination file specified"
	fi

	if (cp "$TMUX_SOURCE_PATH" "$TMUX_DESTINATION_FINAL");
	then
		echo "Successfully synced nvim into $TMUX_DESTINATION_FINAL"
	else
		err "Cannot sync files."
	fi
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
