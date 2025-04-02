fish_add_path ~/.local/bin

alias sysup="paru"

alias paur="sl"
alias tetris="sl"
alias pcaman='sl'
alias :w='sl'
alias claer='sl'

alias 'sl'='/home/glow/.config/fish/randsl.sh'

alias orpheus='cd /home/glow/OrpheusDL && python orpheus.py'
alias v="vim"
alias sv="EDITOR=vim sudoedit"
alias nv="nvim"
alias snv="sudoedit"
alias :q="exit"
alias wanger="ranger"
alias python="/home/glow/pyvenv/bin/python"
alias pip="/home/glow/pyvenv/bin/pip"
alias fuck='paru -Rns'
alias rvd='rvm default'
alias ber='bundle exec rails'
alias br='bin/rails'
alias please='sudo'
alias mods='sudo'
alias chat-what='paru -Ss'
alias search='paru -Ss'
alias p='paru'
alias poo='paru'
alias pee='paru'
alias md='mkdir -p'
alias nuke='pkill -KILL'
alias r='rvm > /dev/null'
alias s='source /home/glow/.config/fish/config.fish'

export EDITOR=nvim
export VISUAL=nvim
# export GEM_HOME='/home/glow/.gems/'
# export GEM_PATH='/home/glow/.gems/'
# export BUNDLE_PATH='/home/glow/.gems/'
# export BUNDLE_HOME='/home/glow/.gems/'

#zoxide init --cmd cd fish | source
zoxide init fish | source
starship init fish | source

#function fish_greeting
#  echo "            ~<o         -+          "
#  echo "     ~+           .       ~-<0      "
#  echo " .           ~*       +             "
#  echo "        '                  |        "
#  echo "    ()    .-.,=\"``\"=.    - o -    "
#  echo "          '=/_       \     |        "
#  echo "      -*   |  '=._    |             "
#  echo "            \     `=./`,  ()    '   "
#  echo "         .   '=.__.=' `='     -*    "
#  echo "+                         +         "
#  echo "    ~*      *        '       .      "
#end

#yazi
function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end


if env | grep -Fq 'CONTAINER_ID=rosbox'
  bash
else
  if uwsm check may-start
    exec uwsm start hyprland.desktop
  end
end
