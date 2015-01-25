# ~/.bashrc

[ -z "$PS1" ] && return

# OPTIONS
# =====================================
shopt -s checkwinsize
shopt -s autocd
shopt -s histappend
shopt -s extglob
shopt -s no_empty_cmd_completion
shopt -s cdable_vars

# HISTORY
# =====================================
HISTSIZE=1000
HISTFILESIZE=${HISTSIZE}
HISTCONTROL=ignoreboth
HISTIGNORE="ls*:l:ll:la:lla:l.:cd*:upd:upg:updg:h:c:exit:."

# ALIASES
# =====================================
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# PS1
# =====================================
if which tput &> /dev/null && [[ $(tput -T$TERM colors) -ge 8 ]]; then
	PS1="\[\e[00;33m\][\w]\[\e[0m\]\[\e[00;37m\]\$ \[\e[0m\]"
else
	PS1="[\w]\$ "
fi

# BASH COMPLETION
# =====================================
if [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi

# BASE16 SHELL
# =====================================
BASE16_THEME="base16-flat.dark.sh"
BASE16_BASE_DIR="${HOME}/.config/base16-shell"
BASE16_COMPLETE_PATH="${BASE16_BASE_DIR}/${BASE16_THEME}"

if [ -f $BASE16_COMPLETE_PATH ]; then 
	. $BASE16_COMPLETE_PATH
fi

unset BASE16_{THEME,BASE_DIR,COMPLETE_PATH}

# TMUX
# =====================================
if which tmux &> /dev/null; then
	# attach session if one exisits or create new one
	test -z "$TMUX" && (tmux attach || tmux new-session) 
fi

# CUSTOM FUNCTIONS
# =====================================

# mkdir and change to it
mkcd() {
	mkdir -p "$1" && cd "$_"
}

# change to directory and list its contents
cls() {
	cd "$1" && ls -F
}

# CDABLE VARS
# =====================================
# no tilde expansion => use $HOME instead
export dropbox="${HOME}/Dropbox"
export desktop="${HOME}/Schreibtisch"
export downloads="${HOME}/Downloads"
export projects="${HOME}/projects"
