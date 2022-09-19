# Ensure that GPG Agent is used as the SSH agent
gpgconf --launch gpg-agent
set -x GPG_TTY (tty)
set -e SSH_AUTH_SOCK
set -gx SSH_AUTH_SOCK "$XDG_RUNTIME_DIR/gnupg/S.gpg-agent.ssh"

nvm use default --silent
alias l="ls"
alias ls="exa --icons -TL 1"
alias la="ls --all"
alias ll="ls -lF --all"
alias v="nvim"
alias rm="safe-rm"

if status is-interactive
    # hemlo
end

