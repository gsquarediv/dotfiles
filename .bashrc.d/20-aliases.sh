alias diff='diff --color=auto'

if command -v sudo-rs &> /dev/null; then
	alias sudo='sudo-rs '
fi
if command -v kitty &> /dev/null; then
	alias ssh='kitty +kitten ssh'
fi
if [ -d "${HOME}/.dotfiles" ] && command -v git &> /dev/null; then
	alias dotfile='/usr/bin/git --git-dir=${HOME}/.dotfiles/ --work-tree=$HOME'
fi
if command -v flatpak &> /dev/null && ! command -v bottles-cli &> /dev/null; then
	alias bottles-cli='flatpak run --command=bottles-cli com.usebottles.bottles'
fi

if [ -e "${HOME}/.config/opencode/opencode.json" ] && command -v podman &> /dev/null; then
	if command -v tmux &> /dev/null; then
		alias opencode='tmux new-session -n opencode podman run --rm -it --init --name opencode -v "${HOME}/.config/opencode/opencode.json:/root/.config/opencode/opencode.json:Z" -v "$PWD:/root/$(basename $PWD):z" -w "/root/$(basename $PWD)" -p 4096:4096 -p 8080 --tz America/New_York -e OPENCODE_SERVER_PASSWORD -e NODE_TLS_REJECT_UNAUTHORIZED=0 --log-driver=none ghcr.io/anomalyco/opencode'
	else
		alias opencode='podman run --rm -it --init --name opencode -v "${HOME}/.config/opencode/opencode.json:/root/.config/opencode/opencode.json:Z" -v "$PWD:/root/$(basename $PWD):z" -w "/root/$(basename $PWD)" -p 4096:4096 -p 8080 --tz America/New_York -e OPENCODE_SERVER_PASSWORD -e NODE_TLS_REJECT_UNAUTHORIZED=0 --log-driver=none ghcr.io/anomalyco/opencode'
	fi
fi
