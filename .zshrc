# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
zstyle ':omz:update' mode auto      # update automatically without asking

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions fzf fzf-dir-navigator zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Example aliases
# alias ohmyzsh="mate ~/.oh-my-zsh"


export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"export PATH="/opt/homebrew/opt/ruby/bin:/opt/homebrew/lib/ruby/gems/3.2.0/bin:$PATH"

# source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh

eval $(thefuck --alias)
eval "$(zoxide init --cmd cd zsh)"
alias drawio=/Applications/draw.io.app/Contents/MacOS/draw.io
export PATH="/opt/homebrew/opt/e2fsprogs/bin:$PATH"
export PATH="/opt/homebrew/opt/e2fsprogs/sbin:$PATH"
export MODULAR_HOME="/Users/filippovisconti/.modular"
export PATH="/Users/filippovisconti/.modular/pkg/packages.modular.com_mojo/bin:$PATH"
export MPICC="/opt/homebrew/Cellar/open-mpi/4.1.6/bin/mpicc"
export MPIRUN="/opt/homebrew/Cellar/open-mpi/4.1.6/bin/mpirun"
export OMP_PREFIX="/opt/homebrew/opt/libomp"


# -- Use fd instead of fzf --

export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

# Use fd (https://github.com/sharkdp/fd) for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}

export FZF_CTRL_T_OPTS="--preview 'bat -n --color=always --line-range :500 {}'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"

# Advanced customization of fzf options via _fzf_comprun function
# - The first argument to the function is the name of the command.
# - You should make sure to pass the rest of the arguments to fzf.
_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf --preview 'eza --tree --color=always {} | head -200' "$@" ;;
    export|unset) fzf --preview "eval 'echo \$'{}"         "$@" ;;
    ssh)          fzf --preview 'dig {}'                   "$@" ;;
    *)            fzf --preview "bat -n --color=always --line-range :500 {}" "$@" ;;
  esac
}



alias buc='brew upgrade --greedy && brew cleanup --prune=all'
alias t='~/.config/alacritty/toggle_dark_light_mode.sh'
alias ls="eza --icons --group-directories-first -s extension"
alias ll="eza --icons --group-directories-first -la -s extension"
alias la="eza --icons --group-directories-first -a -s extension"
alias l="eza --icons --group-directories-first -l -s extension"
alias ne="neovide"
alias nn="nvim"
alias rename=".local/bin/vimv"
alias nvimconfig="nvim ~/.config/nvim"
alias alacconfig="nvim ~/.config/alacritty/alacritty.toml"
alias sshconfig="nvim ~/.ssh/config"
alias zshconfig="nvim ~/.zshrc"
alias yd="yarn dev"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(gh copilot alias -- zsh)"
eval "$(fzf --zsh)"
eval "$(starship init zsh)"
