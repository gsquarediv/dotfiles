if [[ $- == *i* && -z "$TMUX" ]] && command -v fortune &> /dev/null; then
    cowfortune
fi
