# oh-my-zsh_powerlevel9k
my terminal config

To install :

* (OSX) Install Brew
```bash
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
* (OSX) Install Oh-My-ZSH
```bash
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
* (OSX) Install cask, thefuck, wget and git
```bash
brew install wget git cask thefuck
```
* (OSX) Install Fonts
```bash
brew tap caskroom/fonts
brew cask install font-hack-nerd-font
```
* (OSX) Install Syntax Highlight
```bash
brew install zsh-syntax-highlighting
```
* (OSX) Install zsh-autosuggestion
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

* (OSX) Install Jarvis VIM
```bash
curl -L https://raw.github.com/NextJump/jarvis/master/install.sh | sh
```

* Clone
```bash
cd
git clone https://github.com/steevesaustin/oh-my-zsh_powerlevel9k.git
```
* Remove any zsh config and symlink to the git clone
```bash
rm .zshrc && ln -s oh-my-zsh_powerlevel9k/.zshrc .
```
* Install jarvis config
```bash
cd
rm -Rf .vim .vimrc
ln -s ./jarvis .vim
ln -s ./jarvis/vimrc .vimrc
```
* Finally, source
```bash
source .zshrc
```

