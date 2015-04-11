# ~/.profile

# EXPORTS
# =====================================
export EDITOR=vim
export PAGER=less

# PATH
# =====================================
if [ -d "$HOME/bin" ]; then
	export PATH="$PATH:$HOME/bin"
fi

# BASH
# =====================================
if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi
