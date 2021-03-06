# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
ZSH_DISABLE_COMPFIX="true"
export TERM="xterm-256color"
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
POWERLEVEL9K_MODE='nerdfont-complete'
ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="tru11e"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(jira git python vi-mode copydir  copyfile autojump zsh-autosuggestions zsh-syntax-highlighting)

# autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh


source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="/usr/local/bin:$PATH"

# Java Home
case `uname` in
  Darwin)
	JAVA_HOME=`/usr/libexec/java_home`
  ;;
  Linux)
	JAVA_HOME=/usr/lib/jvm/java-8-oracle/jre
  ;;
  *)
	JAVA_HOME=
  ;;
esac
#JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home

CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar

# Go Home
export GOROOT=/usr/local/Cellar/go/1.10/libexec
export GOPATH=$HOME/.go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# Android Home
ANDROID_HOME=/usr/local/Cellar/android-sdk/24.4.1_1

export JAVA_HOME
export CLASSPATH
export ANDROID_HOME
export PATH=$PATH:.:$JAVA_HOME/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:

# ShadowSocks
#export http_proxy=http://127.0.0.1:1087;
#export https_proxy=http://127.0.0.1:1087;

# Brew
export HOMEBREW_GITHUB_API_TOKEN="";

# Hexo_Algolia
export HEXO_ALGOLIA_INDEXING_KEY=

# The Fuck
export PATH="/usr/local/opt/sqlite/bin:$PATH"
eval $(thefuck --alias)


# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias todo='todo.sh -d ~/.todo.cfg'
alias ss='ssh sdeloustal@nagios-sysnet.ullink.lan'

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# npm taobao
alias cnpm="npm --registry=https://registry.npm.taobao.org \
--cache=$HOME/.npm/.cache/cnpm \
--disturl=https://npm.taobao.org/dist \
--userconfig=$HOME/.cnpmrc"

alias tmux="tmux -2"


# Powerlevel9k
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon host ssh time user dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history load ram swap disk_usage battery ip)

POWERLEVEL9K_OS_ICON_FOREGROUND='black'
POWERLEVEL9K_OS_ICON_BACKGROUND='white'
POWERLEVEL9K_TIME_FOREGROUND='grey'
POWERLEVEL9K_TIME_BACKGROUND='black'
POWERLEVEL9K_TIME_FORMAT="%D{\uf49b %H:%M:%S \uF5EF %d.%m.%y}"
POWERLEVEL9K_DIR_HOME_FOREGROUND='grey'
POWERLEVEL9K_DIR_HOME_BACKGROUND='black'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='grey'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='black'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='grey'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='black'
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND='black'
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND='magenta'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='blue'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='cyan'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='magenta'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='black'
POWERLEVEL9K_STATUS_ERROR_FOREGROUND='magenta'
POWERLEVEL9K_STATUS_ERROR_BACKGROUND='black'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='black'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='green'
POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND='black'
POWERLEVEL9K_VI_MODE_INSERT_BACKGROUND='cyan'
POWERLEVEL9K_VI_MODE_NORMAL_FOREGROUND='black'
POWERLEVEL9K_VI_MODE_NORMAL_BACKGROUND='yellow'

POWERLEVEL9K_USER_ICON="\uF415"
POWERLEVEL9K_USER_DEFAULT_FOREGROUND='black'
POWERLEVEL9K_USER_DEFAULT_BACKGROUND='white'
POWERLEVEL9K_USER_ROOT_FOREGROUND='black'
POWERLEVEL9K_USER_ROOT_BACKGROUND='red'

POWERLEVEL9K_ROOT_ICON="\uF21B"
POWERLEVEL9K_HOST_ICON="\uF109"
POWERLEVEL9K_HOST_REMOTE_BACKGROUND='magenta'
POWERLEVEL9K_HOST_LOCAL_BACKGROUND='cyan'
POWERLEVEL9K_HOST_LOCAL_FOREGROUND=''
POWERLEVEL9K_SSH_ICON="\uFCB4"

POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER="."
POWERLEVEL9K_STATUS_CROSS=true
POWERLEVEL9K_IP_INTERFACE=eno1
POWERLEVEL9K_IP_ICON="\uF6FF"

POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{green}\uf061 "
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
# POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{white}\u256D\u2500%f"
# POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{white}\uf054 "


source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
