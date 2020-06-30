#My fish shell configuration

alias cfg="/usr/bin/git --git-dir=$HOME/.dotgit/ --work-tree=$HOME/"

#export PATH="$HOME/.cargo/bin:$PATH"

set -U fish_user_paths $HOME/.cargo/bin /usr/local/bin /usr/bin /bin 


if command -v exa > /dev/null
	abbr -a l 'exa'
	abbr -a ls 'exa'
	abbr -a lls 'exa'
	abbr -a ll 'exa -l'
	abbr -a lll 'exa -la'
else
	abbr -a l 'ls'
	abbr -a ll 'ls -l'
	abbr -a lll 'ls -la'
end

if command -v broot > /dev/null
	abbr -a brh 'br -h'
end

if command -v nvim > /dev/null
	abbr -a vim 'nvim'
end

function fish_greeting
end




