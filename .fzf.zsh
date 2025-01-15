# Setup fzf
# ---------
if [[ ! "$PATH" == */home/ian/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/ian/.fzf/bin"
fi

source <(fzf --zsh)
