# ~/.profile

# EXPORTS
# =====================================
export EDITOR=vim
export PAGER=less

# PATH
# =====================================
if [ -d "$HOME/bin" ] ; then
	PATH="$PATH:$HOME/bin"
fi
