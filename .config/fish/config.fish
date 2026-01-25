fish_add_path ~/.local/bin
fish_add_path ~/.pyvenv/bin

alias sysup="paru"

alias paur="sl"
alias tetris="sl"
alias pcaman='sl'
alias :w='sl'
alias claer='sl'
alias sudo='sl'
alias bash='sl'

# funny but has consequences
# alias git='sl'
# alias hannah='/usr/bin/git'

alias 'sl'='/home/glow/.config/fish/randsl.sh'

# BULLSHIT aliases
alias HELP='/usr/bin/bash'
alias please='/usr/bin/sudo'
alias mods='/usr/bin/sudo'
alias fucking='/usr/bin/sudo'

# real aliases
alias orpheus='cd /home/glow/OrpheusDL && python orpheus.py'
alias v="vim"
alias sv="EDITOR=vim sudoedit"
alias nv="nvim"
alias snv="sudoedit"
alias :q="exit"
alias wanger="ranger"
# disabled because i use multiple venvs now
# alias python="/home/glow/.pyvenv/bin/python"
# alias pip="/home/glow/.pyvenv/bin/pip"
alias py3.13='source /home/glow/.pyvenv3.13/bin/activate.fish'
alias py3.13t='source /home/glow/.pyvenv3.13t/bin/activate.fish'
alias py3.12='source /home/glow/.pyvenv3.12/bin/activate.fish'
alias py='source /home/glow/.pyvenv/bin/activate.fish'
alias fuck='paru -Rnsc'
alias rvd='rvm default'
alias ber='bundle exec rubocop'
alias be='bundle exec'
alias br='bin/rails'
alias chat-what='paru -Ss'
alias search='paru -Ss'
alias p='paru'
alias poo='paru'
alias pee='paru'
alias md='mkdir -p'
alias nuke='pkill -KILL'
alias r='rvm > /dev/null'
alias s='source /home/glow/.config/fish/config.fish'
alias uvpn='please openfortivpn remoteaccess.shef.ac.uk -u ach22jc'
alias rosbox='distrobox enter rosbox'
alias rails-server='thrust bin/rails s'
alias updf='cd /home/glow/Documents/obsidian/uni/attachments && nohup zathura $(fzf)'
alias condascript='source /home/glow/.config/fish/condascript.fish'
alias cpip='/home/glow/.conda/envs/sa_cell_tools/bin/pip'
alias bark='ruff format /home/glow/Documents/job/staph-code/cell_tool/'

export EDITOR=nvim
export VISUAL=nvim
# export GEM_HOME='/home/glow/.gems/'
# export GEM_PATH='/home/glow/.gems/'
# export BUNDLE_PATH='/home/glow/.gems/'
# export BUNDLE_HOME='/home/glow/.gems/'

#zoxide init --cmd cd fish | source
zoxide init fish | source
starship init fish | source

# function fish_greeting
#   echo '  '(set_color f9e2af)'*         '(set_color fab387)'~<o       '(set_color f5c2e7)'  -+          
#             '(set_color f9e2af)' ~+           .       ~-<'(set_color fab387)'0      
#          .           '(set_color f5c2e7)'~*      '(set_color a6e3a1)' +             
#                 \'                  '(set_color 89b4fa)'|        
#            '(set_color f9e2af)' ()    .-.'(set_color cba6f7)',="``"=.    '(set_color 89b4fa)'- '(set_color cdd6f4)'o '(set_color 89b4fa)'-    
#                   '(set_color f9e2af)'\'='(set_color cba6f7)'/'(set_color f9e2af)'_       '(set_color cba6f7)'\     '(set_color 89b4fa)'|        
#               -*   '(set_color cba6f7)'|  '(set_color f9e2af)'\'=._    '(set_color cba6f7)'|             
#          +          \     '(set_color f9e2af)'`=.'(set_color cba6f7)'/'(set_color f9e2af)'`,  '(set_color b4befe)'()    \'   
#                  .   '(set_color cba6f7)'\'=.__.=\' '(set_color f9e2af)'`=\'     '(set_color f5c2e7)'-*    
#         +                      '(set_color f9e2af)'   +         
#            '(set_color f38ba8)' ~*     '(set_color f5c2e7)' *     '(set_color fab387)'   \'       .      '
# end

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
