## -------------------------------------------------------------------------- ##
##                         My fish shell configuration                        ## 
## -------------------------------------------------------------------------- ## 

alias dot="/usr/bin/git --git-dir=$HOME/.dotgit/ --work-tree=$HOME/"

set -U fish_user_paths $HOME/.cargo/bin /usr/local/bin /usr/bin /bin 

function dotadd --description "dotadd <filename>"
	if test (count $argv) -ne 1; or test argv[1] = "--help"
		echo "Usage: dotadd <file in XDG_CONFIG_HOME>"	
	else
		dot add (fd $argv $XDG_CONFIG_HOME)
	end
end

function dotcommit --description "dotpush <filename> <message>"
	if test (count $argv) -ne 2; or test argv[1] = "--help"
		echo "Usage: dotadd <file in XDG_CONFIG_HOME>"	
	else
		# echo $argv[1]
		# echo $argv[2]
		dot commit (fd $argv[1] $XDG_CONFIG_HOME) -m $argv[2]
	end
end


if command -v exa > /dev/null
	abbr -a ls 'exa'
	abbr -a ll 'exa -l'
	abbr -a lll 'exa -la'
else
	abbr -a ls 'ls'
	abbr -a ll 'ls -l'
	abbr -a lll 'ls -la'
end

abbr -a ewm 'nvim /home/shane/.config/bspwm/bspwmrc'

if command -v broot > /dev/null
	abbr -a brh 'br -h'
end

if command -v nvim > /dev/null
	abbr -a vim 'nvim'
end


function fish_greeting
end





