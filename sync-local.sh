#!/bin/bash

case $1 in
	"nvim")
		echo "Syncing nvim...";;
	"tmux")
		echo "Syncing tmux...";;
	*)
		echo "Not found";;
	esac
