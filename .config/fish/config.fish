fish_add_path ~/.local/bin
fish_add_path ~/.local/share/gem/ruby/3.4.0/bin
fish_add_path ~/.pyvenv/bin
fish_add_path ~/.cargo/bin

source ~/.config/fish/alias.fish

export EDITOR=nvim
export VISUAL=nvim
export GEM_HOME='/home/glow/.local/share/gem/ruby/3.4.0'
export GEM_PATH='/home/glow/.local/share/gem/ruby/3.4.0'
export BUNDLE_PATH='/home/glow/.local/share/gem/ruby/3.4.0'
export BUNDLE_HOME='/home/glow/.local/share/gem/ruby/3.4.0'

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
  if uwsm check may-start &> /dev/null
    exec uwsm start hyprland.desktop
  end
end

# todo
# t ls
