# I prefer to see colors and dotfiles
alias ls='ls -A --color=always'
alias grep='grep --color=always'

alias mktargz='tar -X ~/.tarignore -czvf'
alias mktar='tar -X ~/.tarignore -cvf'
alias rmswp='find . -type f -name ".*.sw?" -delete'
alias lspkg="printf '%s\n' \"${PATH//:/$'\n'}\" | xargs ls -A --color=always"

export CXX=clang++
export CC=clang

printf 'Welcome back Mr Saturn!\n'
neofetch
