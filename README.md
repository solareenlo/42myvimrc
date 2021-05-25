# 42myvimrc

## Usage
- 以下のスクリプトを順次実行していく．
```shell
# キーリピートを設定する
defaults write -g InitialKeyRepeat -int 15
defaults write -g KeyRepeat -int 2

# goinfre へ brew をインストールする
mkdir -p /goinfre/$LOGNAME/homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C /goinfre/$LOGNAME/homebrew
echo 'PATH="/goinfre/$LOGNAME/homebrew/bin:$PATH"' >> $HOME/.zshrc

# vim をインストールする
brew install vim
# vim で solarized の色がきちんと出るようにする
bash ~/.cache/dein/repos/github.com/lifepillar/vim-solarized8/scripts/solarized8.sh

# git, ccls をインストールする
brew install git ccls

# ファイル検索，ファイル内の単語検索ツールをインストールする
brew install fzf bat ripgrep
$(brew --prefix)/opt/fzf/install
echo "alias fzf='fzf --preview \"bat  --color=always --style=header,grid --line-range :100 {}\"'" >> ~/.zshrc

# zsh でハイライトと単語補完するツールをインストールする
brew install zsh-syntax-highlighting zsh-autosuggestions
echo "source /goinfre/$LOGNAME/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc

# norminette をバージョンアップさせる
/usr/local/bin/python3 -m pip install --upgrade pip
echo 'PATH=/Users/$LOGNAME/Library/Python/3.9/bin:$PATH' >> $HOME/.zshrc
python3 -m pip install --upgrade norminette
exec $SHELL -l

# C++ 用のリントをインストールする
pip install cpplint

# vim 上で単語保管するプラグインに必要
pip3 install --user pynvim

# 予めある .vimrc をダウンロードする
curl https://raw.githubusercontent.com/solareenlo/42myvimrc/main/.vimrc -o ~/.vimrc

# dein をインストールする
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein

# dein を使って vim のプラグインをインストールする
vim ~/.vimrc
:call dein#install()
:call dein#update()
```

- C++ を書くときは，当該ディレクトリで以下を実行する．
```shell
# ccls へ標準ライブラリのパスを指定してあげる
curl -O https://raw.githubusercontent.com/solareenlo/42myvimrc/main/.ccls
```
