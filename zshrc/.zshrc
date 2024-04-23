source ~/.config/zshrc/ohmyzsh.zsh
source ~/.config/zshrc/aliases.zsh
source ~/.config/zshrc/exports.zsh
source ~/.config/zshrc/fzf.zsh


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(fzf --zsh)"

eval "$(thefuck --alias)"
eval "$(zoxide init --cmd cd zsh)"
eval "$(gh copilot alias -- zsh)"
eval "$(starship init zsh)"
