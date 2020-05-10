#!/usr/bin/env bash
#
# kaLn dotfiles bootstrap 
#

# colored output codes
readonly RTXT="\e[0m"
readonly RED="\e[0;31m"
readonly GRE="\e[0;32m"

# directories and files
readonly BASE_DIR="$PWD"
readonly BACKUP_DIR="$HOME/.dotfilesbackup/"
readonly DOTFILES_LIST=(
	'.zshrc'
	'.aliases'
	'.config/nvim/init.vim'
)

_show_err() {
	echo -e " ${RED}$1${RTXT} "
}

_show_suc() {
	echo -e " ${GRE}$1${RTXT} "
}

get_answer() {
	
	read -r -n1 -p "$1"

	if ! [[ "$REPLY" =~ ^[Yy]$ || "$REPLY" =~ ^[Nn]$ ]]; then
		_show_err "You must reply [Yy] or [Nn]"
		get_answer "$1"
	fi

}

backup_current_dotfiles() {
	
	mkdir "$BACKUP_DIR"

	for file in "${DOTFILES_LIST[@]}"; do
		if  [[ -f "$HOME/${file}" ]]; then
			cp "$HOME/${file}" "$BACKUP_DIR"
		fi
	done

}

sync_new_dotfiles() {

	for file in "${DOTFILES_LIST[@]}"; do
		if [[ -f "$BASE_DIR/${file}" ]]; then
			cp "$BASE_DIR/${file}" "$HOME/${file}"
			if [[ $? -eq 0 ]]; then
				_show_suc "$HOME/${file} synced."
			else
				_show_err "The dotfiles could not be synced."
			fi
		fi
	done

}

sync_new_dotfiles
