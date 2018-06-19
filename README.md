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
* Clone
```bash
cd
git clone https://github.com/steevesaustin/oh-my-zsh_powerlevel9k.git
```
* Remove any zsh config and symlink to the git clone
```bash
rm .zshrc && ln -s oh-my-zsh_powerlevel9k/.zshrc .
```
* Finally, source
```bash
source .zshrc
```
