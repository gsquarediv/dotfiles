# systemctl --user enable --now ssh-agent.service
if [ -z "${SSH_AUTH_SOCK}" ] && [ -e "${XDG_RUNTIME_DIR}/ssh-agent.socket" ]; then
	export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}/ssh-agent.socket"
fi
if [ -e "${HOME}/.ssh/github" ] && command -v ssh-add &> /dev/null && ! ssh-add -L 2>/dev/null | grep -q 'github.com'; then
	ssh-add "${HOME}/.ssh/github"
fi

