#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
export PATH="$HOME/.local/bin:$PATH"
eval "$(starship init bash)"

# star intro on every new terminal
if [[ $- == *i* && $SHLVL -eq 1 ]]; then
  star-intro
  command -v fastfetch >/dev/null && fastfetch
fi
export PATH="$HOME/.local/bin:$PATH"
