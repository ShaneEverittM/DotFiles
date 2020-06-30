## -------------------------------------------------------------------------- ## 
##                     function for managing my dotfiles                     ## 
## -------------------------------------------------------------------------- ## 

# Assumes you only have one config file of each
# name in you config directory

function dotcommit --description "dotpush <filename> <message>"
	if test (count $argv) -ne 2; or test argv[1] = "--help"
		echo "Usag dotcommit <file in XDG_CONFIG_HOME> <message>"	
	else
		dot commit (fd $argv[1] $XDG_CONFIG_HOME) -m $argv[2]
	end
end

