# ~/.profile

# EXPORTS
# =====================================
export EDITOR=vim
export PAGER=less
export CDPATH=~/projects

# PATH
# =====================================
if [ -d "$HOME/bin" ]; then
	export PATH="$PATH:$HOME/bin"
fi
