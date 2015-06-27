# ~/.profile

# EXPORTS
# =====================================
export EDITOR=vim
export PAGER=less

# Automatically invoke cnf-handler
export COMMAND_NOT_FOUND_AUTO=1

export MAVEN_HOME="/opt/maven-default"
export JAVA_HOME="/opt/java7-default"

# PATH
# =====================================
if [ -d "$HOME/bin" ]; then
	export PATH="$PATH:$HOME/bin"
fi

export PATH="$PATH:$MAVEN_HOME/bin"

# BASH
# =====================================
if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi
