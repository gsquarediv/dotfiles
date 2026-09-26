# systemctl --user enable --now ssh-agent.service
export SSH_AUTH_SOCK=${XDG_RUNTIME_DIR}/ssh-agent.socket
ssh-add ~/.ssh/github
