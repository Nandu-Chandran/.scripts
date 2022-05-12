#!/bin/bash
# Dmenu script for editing some of my more frequently edited config files.


declare -a options=("bash-alias"
"bash"
"dwm"
"neovim"
"quickmarks"
"qutebrowser"
"st"
"surf"
"sxhkd"
"vim"
"xresources"
"zsh"
"quit"
)

# The combination of echo and printf is done to add line breaks to the end of each
# item in the array before it is piped into dmenu.  Otherwise, all the items are listed
# as one long line (one item).

choice=$(echo "$(printf '%s\n' "${options[@]}")" | dmenu -p 'Edit config file: ')
case "$choice" in
	quit)
		echo "Program terminated." && exit 1
	;;
	bash)
		choice="$HOME/.bashrc"
	;;
	dwm)
		choice="$HOME/dwm-distrotube/config.h"
	;;
	neovim)
		choice="$HOME/.config/nvim/init.vim"
	;;
	quickmarks)
		choice="$HOME/.config/qutebrowser/quickmarks"
	;;
	qutebrowser)
		choice="$HOME/.config/qutebrowser/autoconfig.yml"
	;;
	st)
		choice="$HOME/st-distrotube/config.h"
	;;
	surf)
		choice="$HOME/surf-distrotube/config.h"
	;;
	sxhkd)
		choice="$HOME/.config/sxhkd/sxhkdrc"
	;;
	vim)
		choice="$HOME/.vimrc"
	;;
	xresources)
		choice="$HOME/.Xresources"
	;;
	zsh)
		choice="$HOME/.zshrc"
	;;
	*)
		exit 1
	;;
esac

# Ultimately, what do want to do with our choice?  Open in our editor!
st -e nvim "$choice"
# emacsclient -c -a emacs "$choice"

