# ~/.profile

# EXPORTS
# =====================================
export EDITOR=vim
export PAGER=less
export CDPATH=~/projects:~/dev:~/workspaces

# BASHRC
# =====================================
if [ -n "$BASH_VERSION" ]; then
	if [ -f "$HOME/.bashrc" ]; then
		. "$HOME/.bashrc"
	fi
fi

# PATH
# =====================================
if [ -d "$HOME/bin" ]; then
	export PATH="$PATH:$HOME/bin"
fi

# DIRCOLORS
# =====================================
if [ -f "$HOME/.dircolors" ]; then
	eval $(dircolors -b $HOME/.dircolors)
fi
