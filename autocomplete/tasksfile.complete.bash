#!/bin/bash

_script()
{
    _script_commands=$(./tasks shortlist)

    local cur
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    COMPREPLY=( $(compgen -W "${_script_commands}" -- ${cur}) )

    return 0
}

complete -o nospace -F _script ./tasks
