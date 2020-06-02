# This zshrc only works together with oh-my-zsh:
#
# git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
#
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="bureau"
#ZSH_THEME="random"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
plugins=(
  git
  adb
  docker
  golang
  ng
  sudo
)

source $ZSH/oh-my-zsh.sh

# User configuration

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
#
#
# Source Anaconda3
source /home/jonas/anaconda3/etc/profile.d/conda.sh

export PATH="/home/jonas/anaconda3/bin:$PATH"

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export PATH=$PATH:$JAVA_HOME/bin

export SPARK_HOME=/opt/spark
export PATH=$PATH:$SPARK_HOME/bin:$SPARK_HOME/sbin
export PYTHONPATH=$SPARK_HOME/python/:$PYTHONPATH

#alias vim='nvim'
alias oldvim='\vim'

# Remove trailing EOL sign
PROMPT_EOL_MARK=''

# Shutdown
alias shutdown='sudo shutdown -h 0'

# Reboot
alias reboot='sudo reboot'

# VPN access
alias vpn='sudo vpnc /etc/vpnc/vpnc.conf'

# VPN exit
alias vpnx='sudo vpnc-disconnect'

# Quit
alias q='exit'

# Sers
alias sers='echo "Hallo, läuft bei dir!"'

# cd Bachelorarbeit
alias ba='cd ~/Dropbox/LMU/Bachelor/WS_1819/Bachelorarbeit'

# open pdf
alias pdf='f() { okular &>/dev/null $1 &};f'

# cowsay
alias fortune='fortune | cowsay'

# cmatrix
alias x='cmatrix'

# anaconda navigator
alias anav='f() {anaconda-navigator &>/dev/null &};f'

# master alias
alias master='cd ~/Dropbox/LMU/Master/SS_20'

# janis server
alias janis-server='ssh jlewe@server.janisheld.de'

# ssh Uniserver
alias cip='ssh lewej@remote.cip.ifi.lmu.de'

# switch Java Version (don't forget to update PATH!)
alias switch-java-version='sudo update-alternatives --config java'

# run kali
alias kali='f() {/usr/lib/virtualbox/VirtualBoxVM --comment "Kali-Linux-2020.1-vbox-amd64" --startvm "{ff07a13f-bba8-4168-88b2-2585e2e51036}" &>/dev/null &};f'

# access robot
alias robo="ssh pi@192.168.0.229"
