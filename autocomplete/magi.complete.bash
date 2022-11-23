#!/bin/bash

_spell_book_list()
{    
    _script_commands=$(grep -P "^$2"  /home/kris/.coat/storage/spells/all_spells)
    
    local cur
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    COMPREPLY=( $(compgen -W "${_script_commands}" -- ${cur}) )
    return 0
}

complete -o nospace -F _spell_book_list magi
