# Alias definitions.
if [ -f ./.bash_aliases ]; then
    source ./.bash_aliases
fi

# Environment variable definitions
if [ -f ./.bash_variables ]; then
    source ./.bash_variables
fi

# Function definitions
if [ -f ./.bash_functions ]; then
    source ./.bash_functions
fi

# Host-specific files
if [ -f $HOME/.bash_host_specific ]; then
   source $HOME/.bash_host_specific
fi
