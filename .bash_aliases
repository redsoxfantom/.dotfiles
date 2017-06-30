# Utility Aliases
alias lls='ls -la'
alias ..='cd ..'
alias where='which'
alias wget-site='wget --recursive --page-requisites --html-extension --convert-links --no-parent'

# Package Management
alias sai='sudo apt-get install'
alias sa='sudo apt-get'

# git Aliases
alias g='git'

# server logins
alias homeserver='ssh pi@$SSH_SERVER_HOME -i $HOME/.ssh/home_server'
alias awayserver='ssh pi@$SSH_SERVER_AWAY -i $HOME/.ssh/home_server'
