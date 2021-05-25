PATH="/goinfre/$LOGNAME/homebrew/bin:$PATH"
PATH=/Users/$LOGNAME/Library/Python/3.9/bin:$PATH

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias fzf='fzf --preview "bat  --color=always --style=header,grid --line-range :100 {}"'
source /goinfre/$LOGNAME/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
