# Command history tweaks:
# - Append history instead of overwriting
#   when shell exits.
# - When using history substitution, do not
#   exec command immediately.
# - Do not save to history commands starting
#   with space.
# - Do not save duplicated commands.
shopt -s histappend
shopt -s histverify
export HISTCONTROL=ignoreboth
cl;screenfetch  -A NixOS
# Default command line prompt.
PROMPT_DIRTRIM=2
PS1='\[\e[38;5;150m\]|\[\e[37;3m\]\T\[\e[0;38;5;150m\]|\[\e[38;5;150m\]|\[\e[37;3m\]\u\[\e[39m\]@\[\e[37m\]\H\[\e[0;38;5;150m\]| \[\e[38;5;150m\]|\[\e[32;3m\]\w\[\e[0;38;5;150m\]| \[\e[37;1m\]#\[\e[0m\]'

# Handles nonexistent commands.
# If user has entered command which invokes non-available
# utility, command-not-found will give a package suggestions.
if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
	command_not_found_handle() {
		/data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
	}
fi
