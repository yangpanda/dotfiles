PATH=$PATH:~/.cargo/bin

# nvm
source /usr/share/nvm/init-nvm.sh

# starship
eval "$(starship init bash)"

# exa
if [ "$(command -v exa)" ]; then
    alias ls='exa -G  --color auto --icons -s type'
    alias la='exa -G  --color auto --icons -a -s type'
    alias l='exa -l --color always --icons -s type'
    alias ll='exa -l --color always --icons -a -s type'
fi

# zoxide
eval "$(zoxide init --cmd j bash)"

# bat
if [ "$(command -v bat)" ]; then
  alias cat='bat --theme="Nord"'
fi

# nvim
alias vim='nvim'
