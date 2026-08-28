# I prefer to see colors and dotfiles
alias ls='ls -A --color=auto'
alias grep='grep --color=auto'

alias mktargz='tar -X ~/.tarignore -czvf'
alias mktar='tar -X ~/.tarignore -cvf'
alias rmswp='find . -type f -name ".*.sw?" -delete'
alias lspkg="printf '%s\n' \"${PATH//:/$'\n'}\" | xargs ls -A --color=auto"
alias browse='lynx -accept_all_cookies'

help2() {
    if [ "$#" -eq 0 ]; then
        printf '\033[1;31mError:\033[0m Provide more than 1 argument\n' >&2
        return 1
    fi
    if ! command -v $1 > /dev/null 2>&1; then
        printf '\033[1;31mError:\033[0m Command "%s" not found\n' "$1" >&2
        return 1
    fi

    tempfile=$(mktemp /tmp/help2.XXXXXX)
    if [ "$#" -gt 1 ]; then
        command_name="$1"
        shift
        ${command_name} $@ > ${tempfile}
    else
        $1 --help > ${tempfile}
    fi
    vim -M -c 'set filetype=help' ${tempfile}
}

export CXX=clang++
export CC=clang
export MANPAGER='vim +MANPAGER'
export MAKEFLAGS="-j$(nproc)"

printf 'Welcome back Mr Saturn!\n'
