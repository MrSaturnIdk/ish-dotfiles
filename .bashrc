# I prefer to see colors and dotfiles
alias ls='ls -A --color=auto'
alias grep='grep --color=auto'

alias mktargz='tar -X ~/.tarignore -czvf'
alias mktar='tar -X ~/.tarignore -cvf'
alias rmswp='find . -type f -name ".*.sw?" -delete'
alias lspkg="printf '%s\n' \"${PATH//:/$'\n'}\" | xargs ls -A --color=auto"
alias browse='lynx -accept_all_cookies'

help2() {
    if [ "$#" -ne 1 ]; then
        printf '\033[1;31mError:\033[0m Only provide 1 argument\n'
        exit 1;
    fi
    $1 --help | vim -M -c 'set filetype=help' -
}

export CXX=clang++
export CC=clang
export MANPAGER='vim +MANPAGER'
export MAKEFLAGS="-j$(nproc)"

printf 'Welcome back Mr Saturn!\n'
