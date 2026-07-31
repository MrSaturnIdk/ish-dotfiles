# I prefer to see colors and dotfiles
alias ls='ls -A --color=always'
alias grep='grep --color=always'

alias mktar='tar -X ~/.tarignore -czvf'
alias rmswp='find . -type f -name ".*.sw?" -delete'

export CXX=clang++
export CC=clang

printf 'Welcome back Mr Saturn!\n'
neofetch
