# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
ZSH_THEME=""

# Which plugins would you like to load?
plugins=(git zsh-autosuggestions zsh-syntax-highlighting z extract)

source $ZSH/oh-my-zsh.sh

# User configuration

# proxyon
proxyon() {
    export https_proxy=http://127.0.0.1:7890
    export http_proxy=http://127.0.0.1:7890
    export all_proxy=socks5://127.0.0.1:7891
    echo "HTTP/HTTPS Proxy on"
}

# proxyoff
proxyoff() {
    unset http_proxy
    unset https_proxy
    unset all_proxy
    echo "HTTP/HTTPS Proxy off"
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH=$PATH:~/.local/go/bin
export PATH=$PATH:~/.local/nvim/bin
. "$HOME/.cargo/env"
export PATH=$PATH:~/.local/bin

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# >>> gi >>>
function gi() { curl -sL https://www.toptal.com/developers/gitignore/api/$@ ;}

_gitignoreio_get_command_list() {
  curl -sL https://www.toptal.com/developers/gitignore/api/list | tr "," "\n"
}

_gitignoreio () {
  compset -P '*,'
  compadd -S '' `_gitignoreio_get_command_list`
}

compdef _gitignoreio gi
# <<< gi <<<

# >>> xmake >>>
test -f "$HOME/.xmake/profile" && source "$HOME/.xmake/profile"
# <<< xmake <<<

export PATH=$PATH:$HOME/go/bin
export PATH=$PATH:/usr/local/texlive/2025/bin/x86_64-linux
export PATH=$PATH:/usr/local/cuda/bin

eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/1_shell.omp.json)"

# ROS Jazzy (only if installed)
[ -f /opt/ros/jazzy/local_setup.zsh ] && source /opt/ros/jazzy/local_setup.zsh

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

unset WAYLAND_DISPLAY
# test capture 2026年 06月 05日 星期五 20:32:47 CST
