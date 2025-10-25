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
. "$HOME/.cargo/env"

# streamlink alias for twitch mpv
twitch() {
	if [ -z "$1" ]; then
		echo  "Usage: twitch <username>"
		return 1
	fi
	streamlink --player mpv $1 best
}

# set nvim as main editor
export EDITOR="/usr/bin/nvim"
# for git config directory
export XDG_CONFIG_HOME="$HOME/.config"
