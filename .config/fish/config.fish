#My fish shell configuration

alias config="/usr/bin/git --git-dir=$HOME/.dotgit/ --work-tree=$HOME/"

neofetch --os_arch off --kernel_shorthand on

set -U fish_user_paths /usr/local/bin /usr/bin /bin

if command -v exa > /dev/null
	abbr -a l 'exa'
	abbr -a ls 'exa'
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

function fish_greeting
end


