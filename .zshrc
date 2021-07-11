PATH="/goinfre/$LOGNAME/homebrew/bin:$PATH"
PATH=/Users/$LOGNAME/Library/Python/3.9/bin:$PATH

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias fzf='fzf --preview "bat  --color=always --style=header,grid --line-range :100 {}"'
source /goinfre/$LOGNAME/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

### End of Zinit's installer chunk
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-syntax-highlighting
zinit light supercrabtree/k
zinit light romkatv/powerlevel10k
zinit ice depth=1
zinit light jeffreytse/zsh-vi-mode

# Go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

# 重複パスを登録しない
typeset -U path PATH
