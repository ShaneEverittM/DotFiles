## -------------------------------------------------------------------------- ## 
##                     function for managing my dotfiles                     ## 
## -------------------------------------------------------------------------- ## 

# Assumes you only have one config file of each
# name in you config directory

#unroll as many files as provided?
function dotadd --description "dotadd <filename>"
	if test (count $argv) -ne 1; or test argv[1] = "--help"
		echo "Usage: dotadd <file in XDG_CONFIG_HOME>"	
	else
		dot add (fd $argv $XDG_CONFIG_HOME)
	end
end

