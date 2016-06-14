# ~/.bashrc

[ -z "$PS1" ] && return

PROMPT_DIRTRIM=2
#PROMPT_COMMAND='history -a'

CDPATH='.'

# OPTIONS
# =====================================
shopt -s checkwinsize
shopt -s autocd
shopt -s histappend
shopt -s extglob
shopt -s no_empty_cmd_completion
shopt -s cdable_vars
shopt -s cdspell

# HISTORY
# =====================================
HISTSIZE=10000
HISTFILESIZE=$(($HISTSIZE * 2))
HISTCONTROL="erasedups:ignoreboth"
HISTIGNORE="ls*:l:ll:la:lla:l.:cd*:fg:bg:upd:upg:updg:h:c:exit:."

# ALIASES
# =====================================
if [ -f ~/.aliases ]; then
	. ~/.aliases
fi

# PS1 and PS2
# =====================================
COLORED_PROMPT=true

if $COLORED_PROMPT && which tput &> /dev/null && [[ $(tput -T$TERM colors) -ge 8 ]]; then
	PS1='\[\e[00;33m\][\w]\[\e[0m\]\[\e[00;37m\]\$ \[\e[0m\]'
else
	PS1='[\w]\$ '
fi

unset -v COLORED_PROMPT

PS2='> '

# BASH COMPLETION
# =====================================
if [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi

## BASE16 SHELL
## =====================================
BASE16_ENABLED=false

BASE16_THEME='base16-flat.dark.sh'
BASE16_BASE_DIR="${HOME}/.config/base16-shell"
BASE16_COMPLETE_PATH="${BASE16_BASE_DIR}/${BASE16_THEME}"

if $BASE16_ENABLED && [ -f $BASE16_COMPLETE_PATH ]; then
	. $BASE16_COMPLETE_PATH
fi

unset -v BASE16_{THEME,BASE_DIR,COMPLETE_PATH}

# TMUX
# =====================================
TMUX_AUTO_START=false

if $TMUX_AUTO_START && which tmux &> /dev/null; then
	# attach session if one exisits or create new one
	test -z "$TMUX" && (tmux attach || tmux new-session)
fi

unset -v TMUX_AUTO_START

# CUSTOM FUNCTIONS
# =====================================

# start meld in background
meld ()
{
	command meld "$@" &
}

# CDABLE VARS
# =====================================
# no tilde expansion => use $HOME instead
export dropbox="${HOME}/Dropbox"
export desktop="${HOME}/Schreibtisch"
export downloads="${HOME}/Downloads"
export projects="${HOME}/projects"
