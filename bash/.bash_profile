set -x
CURRENT_SCRIPT="${BASH_SOURCE[0]}"

force_color_prompt=yes

# github
alias gs='git status'
alias ga='git add'
alias gb='git branch'


# tmux colors
#export TERM="xterm-256color"
#if which tmux >/dev/null 2>&1; then
#   test -z "$TMUX" && (tmux attach || tmux new-session)
#fi


# =begin crazy tmux things
# https://unix.stackexchange.com/questions/320465/new-tmux-sessions-do-not-source-bashrc-file
#source "$HOME/.bashrc"

# =end crazy tmux things


eval "$(dircolors)"

# load after
. .aliases

set +x
