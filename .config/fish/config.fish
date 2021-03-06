## -------------------------------------------------------------------------- ##
##                         My fish shell configuration                        ## 
## -------------------------------------------------------------------------- ## 

alias dot="/usr/bin/git --git-dir=$HOME/.dotgit/ --work-tree=$HOME/"

set -U DENO_INSTALL "/home/shane/.deno"
set -U fish_user_paths $DENO_INSTALL/bin $HOME/.cargo/bin /usr/local/bin /usr/bin /bin 


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
abbr -a efsh 'nvim /home/shane/.config/fish/config.fish'
if command -v broot > /dev/null
	abbr -a brh 'br -h'
end

if command -v nvim > /dev/null
	abbr -a vim 'nvim'
end

abbr -a mon2cam 'deno run --unstable -A -r -q https://raw.githubusercontent.com/ShayBox/Mon2Cam/master/src/mod.ts'


function fish_greeting
end





