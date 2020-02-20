# Alias for a bare git repo used to track dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# adds cargo and snap packages to path
set -U fish_user_paths /snap/bin $fish_user_paths
set -U fish_user_paths /home/shane/.cargo/bin $fish_user_paths
set -U fish_user_paths /home/shane/.local/bin $fish_user_paths



