rxfetch

if [ ! -d "$HOME/.zplug" ]; then
  curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
fi

if [ ! -d "$HOME/.fzf" ]; then
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  ~/.fzf/install
fi

if [ ! -d "$HOME/.rvm" ]; then
  gpg2 --keyserver keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
  curl -sSL https://get.rvm.io | bash -s stable
fi

source $HOME/.zplug/init.zsh
source $HOME/.fzf/shell/completion.zsh
source $HOME/.fzf/shell/key-bindings.zsh
export EDITOR=$(which nvim)

export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border --preview-window=right:60% --preview "bat --color=always --style=header,grid --line-range :500 {}"'
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --follow --exclude .git'

zplug "plugins/git", from:oh-my-zsh
zplug "plugins/last-working-dir", from:oh-my-zsh
zplug "lib/*", from:oh-my-zsh
zplug "agkozak/zsh-z", defer:2
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-completions", defer:2
zplug "zsh-users/zsh-autosuggestions", defer:2
zplug "lukechilds/zsh-nvm"

if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
      echo; zplug install
  fi
fi

zplug load

alias fix='git diff --name-only | uniq | xargs nvim -p'
alias n='nvim'
alias ls='lsd'
alias cat='bat'
alias gla='git log --pretty=format:"%C(auto,yellow)%h %C(auto,blue)%>(12,trunc)%ad %C(auto,green)%<(7,trunc)%aN%C(auto,reset)%s%C(auto,red)% gD% D" --date=relative' # git branch list

function reload() {
  source ~/.zshrc
}

eval "$(starship init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 
