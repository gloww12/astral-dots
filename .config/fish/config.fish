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
alias ber='bundle exec rubocop'
alias be='bundle exec'
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
alias uvpn='sudo openfortivpn remoteaccess.shef.ac.uk -u ach22jc'
alias rosbox='distrobox enter rosbox'
alias rails-server='thrust bin/rails s'
alias updf='cd /home/glow/Documents/obsidian/uni/attachments && nohup zathura $(fzf)'

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
