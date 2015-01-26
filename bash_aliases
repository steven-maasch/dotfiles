alias mencfs="encfs ~/Dropbox/dog-one ~/decrypted"
alias umencfs="fusermount -u ~/decrypted"
alias mywipe="wipe -q -Q 1 -R /dev/zero -S r -r -c"
alias myshred="shred -uvzn 0"

alias myip="curl icanhazip.com"

COLOR_AUTO="--color=auto"
alias ls="ls $COLOR_AUTO"
alias l="ls -F"
alias ll="ls -lhF"
alias la="ls -FA"
alias lla="ls -lhFA"
alias l.="ls -d .!(|.)"

alias tree="tree -C"
alias mydf="df -hPT | column -t"

alias grep="grep $COLOR_AUTO"
alias fgrep="fgrep $COLOR_AUTO"
alias egrep="egrep $COLOR_AUTO"

APT_GET="sudo apt-get"
alias apt-get="$APT_GET"
alias ag="$APT_GET"
alias agi="$APT_GET install -y"
alias update="$APT_GET update && $APT_GET upgrade"

alias rm="rm -i"
alias mkdir="mkdir -p"
alias sudo="sudo "
alias reboot="shutdown -r now"
alias h="history"
alias c="clear"
alias top="htop"

alias rebash=". ~/.bash{rc,_aliases}"

unset COLOR_AUTO
unset APT_GET
