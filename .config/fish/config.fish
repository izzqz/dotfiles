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
alias vf="nvim (fzf)"
alias cat="batcat"
alias restart="source ~/.config/fish/config.fish"
alias i="sudo aptitude install -y"
alias get="aria2c -Z -s16 -x16"
alias p="pass"
alias pc="pass clip"
alias shred="shred -vun 256"

alias g="git"
function gc
    git commit -m "$argv"
end

if status is-interactive
    rbenv init - fish | source &
end

