# 42myvimrc

## Usage
- 以下のスクリプトを順次実行していく．
```shell
# キーリピートを設定する
defaults write -g InitialKeyRepeat -int 15
defaults write -g KeyRepeat -int 2

# ターミナル用に solarized をインストールする
cd && mkdir github && cd github
git clone https://github.com/tomislav/osx-terminal.app-colors-solarized solarized.git
# そして，ターミナルの設定から solarized を選択する

# goinfre へ brew をインストールする
mkdir -p /goinfre/$LOGNAME/homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C /goinfre/$LOGNAME/homebrew
echo 'PATH="/goinfre/$LOGNAME/homebrew/bin:$PATH"' >> $HOME/.zshrc

# 日本とのプログラミング用フォント Cica fonts をインストールする
cd /tmp
curl -L https://github.com/miiton/Cica/releases/download/v5.0.2/Cica_v5.0.2_with_emoji.zip
unzip Cica_v5.0.2_with_emoji.zip
mv *.ttf /Users/$USER/Library/Fonts/
# そして，ターミナルの設定から Cica fonts を選択する

# vim をインストールする
brew install vim
# vim で solarized の色がきちんと出るようにする
bash ~/.cache/dein/repos/github.com/lifepillar/vim-solarized8/scripts/solarized8.sh

# git, ccls tmux をインストールする
brew install git ccls tmux

# 予めある tmux の設定ファイルをインストールする
cd
curl -O https://raw.githubusercontent.com/solareenlo/dotfiles/main/tmux/.tmux.conf

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

# zinit をインストールする
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"
```

- C++ を書くときは，当該ディレクトリで以下を実行する．
```shell
# ccls へ標準ライブラリのパスを指定してあげる
curl -O https://raw.githubusercontent.com/solareenlo/42myvimrc/main/.ccls
```
