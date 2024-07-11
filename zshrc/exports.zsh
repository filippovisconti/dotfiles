
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"export PATH="/opt/homebrew/opt/ruby/bin:/opt/homebrew/lib/ruby/gems/3.2.0/bin:$PATH"

export PATH="/opt/homebrew/opt/e2fsprogs/bin:$PATH"
export PATH="/opt/homebrew/opt/e2fsprogs/sbin:$PATH"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export MODULAR_HOME="/Users/filippovisconti/.modular"
export PATH="/Users/filippovisconti/.modular/pkg/packages.modular.com_mojo/bin:$PATH"
export MPICC="/opt/homebrew/Cellar/open-mpi/4.1.6/bin/mpicc"
export MPIRUN="/opt/homebrew/Cellar/open-mpi/4.1.6/bin/mpirun"
export OMP_PREFIX="/opt/homebrew/opt/libomp"

export LDFLAGS="-L/opt/homebrew/opt/llvm/lib -L/opt/homebrew/opt/llvm/lib/c++ -Wl,-rpath,/opt/homebrew/opt/llvm/lib/c++"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"

export PATH=$PATH:$GOPATH/bin
# export MY_INSTALL_DIR=$HOME/.local
# export PATH="$MY_INSTALL_DIR/bin:$PATH"
