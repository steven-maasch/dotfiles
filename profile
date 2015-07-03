# ~/.profile

# Default pager and editor
# =====================================
export EDITOR=vim
export PAGER=less

# Automatically invoke cnf-handler
export COMMAND_NOT_FOUND_AUTO=1

# Maven
# =====================================
MAVEN_HOME="/opt/maven-default"

if [ -L $MAVEN_HOME ]; then
    export MAVEN_HOME
    export PATH="$PATH:$MAVEN_HOME/bin"
else
    unset MAVEN_HOME;
fi

# Java
# =====================================
JAVA_HOME="/opt/java7-default"

if [ -L $JAVA_HOME ]; then
    export JAVA_HOME
else
    unset JAVA_HOME
fi

# Path ~/bin
# =====================================
if [ -d "$HOME/bin" ]; then
	export PATH="$PATH:$HOME/bin"
fi
