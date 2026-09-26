alias diff='diff --color=auto'

if command -v sudo-rs &> /dev/null; then
    alias sudo='sudo-rs '
fi
if command -v kitty &> /dev/null; then
    alias ssh='kitty +kitten ssh'
fi
if [ -d "${HOME}/.dotfiles" ]; then
    alias dotfile='/usr/bin/git --git-dir=${HOME}/.dotfiles/ --work-tree=$HOME'
fi
if command -v flatpak &> /dev/null && ! command -v bottles-cli &> /dev/null; then
    alias bottles-cli='flatpak run --command=bottles-cli com.usebottles.bottles'
fi