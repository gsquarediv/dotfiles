export HISTSIZE=1000
export SYSTEMD_LESS="FRSMK"

if [ "$XDG_CURRENT_DESKTOP" = "GNOME" ]; then
    export INSTALL4J_ADD_VM_PARAMS='-Dsun.java2d.uiScale=2'
else
    unset INSTALL4J_ADD_VM_PARAMS
fi
