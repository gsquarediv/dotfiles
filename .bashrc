# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

if [ "$XDG_CURRENT_DESKTOP" = "GNOME" ]; then
    export INSTALL4J_ADD_VM_PARAMS='-Dsun.java2d.uiScale=2'
else
    unset INSTALL4J_ADD_VM_PARAMS
fi

export SYSTEMD_LESS="FRSMK"

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

if command -v sudo-rs &> /dev/null; then
    alias sudo='sudo-rs '
fi
alias diff='diff --color=auto'
alias dotfile='/usr/bin/git --git-dir=${HOME}/.dotfiles/ --work-tree=$HOME'
alias bottles-cli='flatpak run --command=bottles-cli com.usebottles.bottles'

if [[ $- == *i* && -z "$TMUX" ]]; then
    cowfortune
fi

# Powerline configuration
if command -v powerline-daemon &> /dev/null; then
    powerline-daemon -q
    POWERLINE_BASH_CONTINUATION=1
    POWERLINE_BASH_SELECT=1
    . /usr/share/powerline/bash/powerline.sh
fi
