export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border --preview-window=right:60% --preview "bat --color=always --style=header,grid --line-range :500 {}"'
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --follow --exclude .git'
export NVM_DIR="$HOME/.nvm"
export PATH="$PATH:$HOME/.rvm/bin"

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"


[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

zinit light zsh-users/zsh-completions
zinit light zdharma-continuum/fast-syntax-highlighting
zinit load agkozak/zsh-z
zinit load zsh-users/zsh-autosuggestions
zinit snippet OMZL::git.zsh
zinit snippet OMZP::git

zinit ice as"command" from"gh-r" \
          atclone"./starship init zsh > init.zsh; ./starship completions zsh > _starship" \
          atpull"%atclone" src"init.zsh"
zinit light starship/starship

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select

autoload -Uz compinit && compinit
zinit cdreplay -q

alias ls='exa --group-directories-first'
alias zshrc='nvim ~/.zshrc'
alias gla='git log --pretty=format:"%C(auto,yellow)%h %C(auto,blue)%>(12,trunc)%ad %C(auto,green)%<(7,trunc)%aN%C(auto,reset)%s%C(auto,red)% gD% D" --date=relative' # git branch list

function reload() {
  source $HOME/.zshrc
  echo "zsh reloaded"
}

# Get last n commits older first
function glc() {
  if [ -z "$1" ]; then
    latest_commits=1
  else
    latest_commits=$1
  fi

  gla | head -n $latest_commits | awk -F ' ' '{print $1}' | xargs | awk '{for(i=NF;i>0;i--) printf("%s ", $i); print ""}'
}

eval "$(fzf --zsh)"
