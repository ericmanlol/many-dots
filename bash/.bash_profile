set -x
CURRENT_SCRIPT="${BASH_SOURCE[0]}"

force_color_prompt=yes


# =begin crazy tmux things
# tmux colors
#export TERM="xterm-256color"
#if which tmux >/dev/null 2>&1; then
#   test -z "$TMUX" && (tmux attach || tmux new-session)
#fi

# https://unix.stackexchange.com/questions/320465/new-tmux-sessions-do-not-source-bashrc-file
#source "$HOME/.bashrc"

# =end crazy tmux things


eval "$(dircolors)"

# load after
. .aliases

# asdf
. $HOME/.asdf/asdf.sh || true
. $HOME/.asdf/completions/asdf.bash || true

set +x

