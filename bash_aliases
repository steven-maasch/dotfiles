alias mencfs="encfs ~/Dropbox/dog-one ~/decrypted"
alias umencfs="fusermount -u ~/decrypted"

alias wipe="wipe -q -Q 1 -R /dev/zero -S r -r"

COLOR_AUTO="--color=auto"

alias ls="ls $COLOR_AUTO"
alias l="ls -F"
alias ll="ls -lhF"
alias la="ls -FA"
alias lla="ls -lhFA"
alias l.="ls -d .!(|.)"

alias tree="tree -C"

alias grep="grep $COLOR_AUTO"
alias fgrep="fgrep $COLOR_AUTO"
alias egrep="egrep $COLOR_AUTO"
alias pgrep="pgrep $COLOR_AUTO"

alias upd="sudo apt-get update"
alias upg="sudo apt-get upgrade"
alias updg="upd && upg"
alias install="sudo apt-get install -y"
alias sudo="sudo "

alias rm="rm -v"
alias mkdir="mkdir -p"

alias h="history"
alias c="clear"

alias top="htop"

unset COLOR_AUTO
