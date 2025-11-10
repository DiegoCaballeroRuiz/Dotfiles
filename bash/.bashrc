# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Make sure path does not break
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Add stuff to path
export PATH="$HOME/.scripts/:$PATH"

# Set nvim as terminal editor
export VISUAL='nvim'
export EDITOR=$VISUAL

# Set nvim as manpager
export MANPAGER='nvim + :Man!'

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

# Launch starship prompt
eval "$(starship init bash)"

# Aliases
alias v='nvim'
alias ls='eza --color=always --group-directories-first --icons'
alias tree='eza --tree --color=always --group-directories-first --icons '
