# ~/.profile

# EXPORTS
# =====================================
export EDITOR=vim
export PAGER=less
export CDPATH=~/projects:~/dev:~/workspaces

# PATH
# =====================================
if [ -d "$HOME/bin" ] ; then
	export PATH="$PATH:$HOME/bin"
fi

# DIRCOLORS
# =====================================
if [ -f "$HOME/.dircolors" ] ; then
	eval $(dircolors -b $HOME/.dircolors)
fi
