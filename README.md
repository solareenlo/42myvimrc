# 42myvimrc

## Usage
- 以下のスクリプトを順次実行していく．
	```shell
	defaults write -g InitialKeyRepeat -int 15
	defaults write -g KeyRepeat -int 2

	mkdir -p /goinfre/$LOGNAME/homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C /goinfre/$LOGNAME/homebrew
	echo 'PATH="/goinfre/$LOGNAME/homebrew/bin:$PATH"' >> $HOME/.zshrc

	brew install vim git ccls
	bash ~/.cache/dein/repos/github.com/lifepillar/vim-solarized8/scripts/solarized8.sh

	brew install fzf bat ripgrep
	$(brew --prefix)/opt/fzf/install
	echo "alias fzf='fzf --preview \"bat  --color=always --style=header,grid --line-range :100 {}\"'" >> ~/.zshrc

	brew install zsh-syntax-highlighting zsh-autosuggestions
	echo "source /goinfre/$LOGNAME/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc

	/usr/local/bin/python3 -m pip install --upgrade pip
	echo 'PATH=/Users/$LOGNAME/Library/Python/3.9/bin:$PATH' >> $HOME/.zshrc
	python3 -m pip install --upgrade norminette
	exec $SHELL -l

	pip install cpplint
	pip3 install --user pynvim

	curl https://raw.githubusercontent.com/solareenlo/42myvimrc/main/.vimrc -o ~/.vimrc
	```

- C++ を書くときは，当該ディレクトリで以下を実行する．
	```shell
	curl -O https://raw.githubusercontent.com/solareenlo/42myvimrc/main/.ccls
	```
