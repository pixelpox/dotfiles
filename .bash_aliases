alias ll='ls -lah --color=auto'
alias llt='ls -laht --color=auto'
alias c='clear'
alias h='history'
alias g='git'
alias grep='grep --color=auto'

alias wget='wget -c '

alias untar='tar -zxvf '
alias nano='vi'

alias ping8="ping 8.8.8.8"

# if user is not root, pass all commands via sudo #
if [ $UID -ne 0 ]; then
    alias reboot='sudo reboot'
    alias update='sudo apt-get upgrade'
fi

# Make unified diff syntax the default
alias diff="diff -u"

# Docker-compose shorthand
alias dc='docker-compose'
alias dcu='docker-compose up -d'
alias dcd='docker-compose down'
