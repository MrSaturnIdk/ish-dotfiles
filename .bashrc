# I prefer to see colors and dotfiles
alias ls='ls -A --color=always'
alias grep='grep --color=always'

alias mktargz='tar -X ~/.tarignore -czvf'
alias mktar='tar -X ~/.tarignore -cvf'
alias rmswp='find . -type f -name ".*.sw?" -delete'
alias lspkg="echo $PATH | tr ':' '\n' | xargs ls"
export CXX=clang++
export CC=clang

printf 'Welcome back Mr Saturn!\n'
neofetch
