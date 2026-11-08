if [[ $- == *i* && -z "$TMUX" ]]; then
    if command -v fortune &> /dev/null; then
        cowfortune
    elif command -v fastfetch &> /dev/null; then
        fastfetch
    fi
fi
