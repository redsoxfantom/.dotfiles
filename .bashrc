currentdir="$1"
echo "$currentdir"

# Alias definitions.
if [ -f $currentdir/.bash_aliases ]; then
   source $currentdir/.bash_aliases
fi

# Environment variable definitions
if [ -f $currentdir/.bash_variables ]; then
    source $currentdir/.bash_variables
fi

# Function definitions
if [ -f $currentdir/.bash_functions ]; then
    source $currentdir/.bash_functions
fi

# Host-specific files
if [ -f $HOME/.bash_host_specific ]; then
   source $HOME/.bash_host_specific
fi
