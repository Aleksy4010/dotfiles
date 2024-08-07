# Path to your oh-my-zsh installation.
fpath=($HOME/completion_zsh $fpath)
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="aleksy"

plugins=(
  vi-mode 
  web-search
  zsh-autosuggestions
  git
)

source $ZSH/oh-my-zsh.sh

PROMPT='%F{magenta}%n%f=>%F{blue}%~%f | '

path+=('/home/m4xshen/.local/bin')
path+=('/home/m4xshen/.local/share/gem/ruby/3.0.0/bin')
export PATH="$(yarn global bin):$PATH"
export EDITOR='nvim'
export QT_QPA_PLATFORM="wayland;xcb"
export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/docker.sock

# alias
[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh" 
alias n='nvim'
alias n-lazy='NVIM_APPNAME=LazyVim nvim'
alias n-nvchad='NVIM_APPNAME=NvChad nvim'
alias n-auv='n scp://auv/~/'
alias gogogo='n scp://s111_111511004SSW@140.113.120.238/~/'
alias rm='rm -I'
alias hs='hugo server --noHTTPCache --disableFastRender'

alias gl='git log --oneline --graph --decorate'
alias gla='git log --oneline --graph --decorate --all'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gb='git branch'
alias gr='git restore'
alias yrd='yarn run dev'
alias yrb='yarn run build'
alias yrl='yarn run lint'

neofetch --source ~/Pictures/wallpapers/wallpaper.jpg --colors 9 5 5 9 5 5

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/etc/profile.d/conda.sh" ]; then
        . "/usr/etc/profile.d/conda.sh"
    else
        export PATH="/usr/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# bun completions
[ -s "/home/m4xshen/.bun/_bun" ] && source "/home/m4xshen/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH=$PATH:/home/aleksy/.spicetify
