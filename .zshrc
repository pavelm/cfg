# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export GOPATH=$HOME/go
export PATH="$HOME/.npm-packages/bin:$PATH:$HOME/.dotnet/tools:$HOME/bin:$HOME/.local/bin"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="clean"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
plugins=(git vagrant docker osx brew sbt scala postgres nvm npm helm kubectl tmux kube-ps1)

source $ZSH/oh-my-zsh.sh
source $HOME/.bash_profile
. `brew --prefix`/etc/profile.d/z.sh

PROMPT='$(kube_ps1) '$PROMPT
# User configuration

#export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin/npm"
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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
#alias vim=/usr/local/Cellar/vim/7.4.488/bin/vim

alias config='/usr/local/bin/git --git-dir=/Users/$USER/.cfg/ --work-tree=/Users/$USER'
alias dkp='docker kill $(docker ps -q)'
alias drmi='docker rmi $(docker images --filter "dangling=true" -q --no-trunc)'
alias drc='docker rm $(docker ps -qa --no-trunc --filter "status=exited")'
alias src='cd ~/Source/'
alias ssrc='cd ~/Source/scala/'
alias resource='source ~/.zshrc'
alias editrc='nvim ~/.zshrc'
alias paket="mono .paket/paket.exe"
alias dynamo="java -Djava.library.path=~/bin/dynamo/DynamoDBLocal_lib -jar DynamoDBLocal.jar -sharedDb"
alias kprod="kubectl config use-context arn:aws:eks:us-east-1:859599070957:cluster/prod-eks-cluster"
alias kqa="kubectl config use-context arn:aws:eks:us-east-1:859599070957:cluster/qa-eks-cluster"
alias kqamvp="kubectl config use-context arn:aws:eks:us-east-1:014990958602:cluster/qa-mvp-eks-cluster"

function gcamb() {
  git commit -a -m "$(current_branch) $@"
}


source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
