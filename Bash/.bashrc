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

if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

# Add scripts to path
export PATH="$HOME/.scripts/:$PATH"

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

# Launch starship prompt
eval "$(starship init bash)"

# Aliases
alias v='nvim'
alias pow='poweroff'
alias ff='fastfetch'
alias gv='nvim --listen ./nvim.sock'
