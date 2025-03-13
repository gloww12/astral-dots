# ~/.bashrc
export TERM="xterm-kitty"
[[ $- != *i* ]] && return
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
export EDITOR=nvim;
alias yippee="yay"
alias :q="exit"
alias v="nvim"
eval "$(starship init bash)"
export PATH=/home/glow/.local/bin:$PATH
export PF_INFO="ascii title os kernel pkgs palette"
export TURTLEBOT3_MODEL=waffle
# export PF_ASCII="Catppuccin"
# export PF_ASCII="Arch"
export PF_ASCII="Sm0l"
export PF_COL1=4
export PF_COL3=5
pfetch
