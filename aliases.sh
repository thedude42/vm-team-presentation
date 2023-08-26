

alias ll='ls -l'
alias lal='ls -al'
alias gs='git status'
alias whatsthis='__what_is_it'


function __what_is_it() {
    local a_command="$1"

    if [ -z "$a_command" ]; then
        echo "I see nothing..."
    elif which "$a_command" > /dev/null; then
        file "$(which "$a_command")"
    else
        echo "$a_command is not in \$PATH"
    fi
}

