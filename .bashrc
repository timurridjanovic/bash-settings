#terminal colors
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

#grep color
export GREP_OPTIONS='--color=auto' 

#PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/bin:$PATH
export PATH=$HOME/.node/bin:$PATH
export PATH=/Users/tridjano/.rbenv/versions/2.2.2/bin:$PATH

#rbenv
export PATH=$HOME/.rbenv/shims:$PATH
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"

export NVM_DIR="/Users/tridjano/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

#use macvim as default
alias vim='/usr/local/Cellar/macvim/7.4-76/bin/vim'


#include proxy settings
if [ -f ~/.proxy_settings ]; then
   source ~/.proxy_settings
fi

#include git prompt
if [ -f ~/.git-prompt.sh ]; then
    source ~/.git-prompt.sh
fi

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/tridjano/.gvm/bin/gvm-init.sh" ]] && source "/Users/tridjano/.gvm/bin/gvm-init.sh"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### AWS
export JAVA_HOME=$(/usr/libexec/java_home)
export EC2_HOME=/usr/local/ec2/ec2-api-tools-1.7.5.1
export PATH=$PATH:$EC2_HOME/bin

### GIT BRANCH IN BASH PROMPT

export PS1='$(__git_ps1) \w\$ '

### GIT COMPLETION
if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
fi

### BASH COMPLETION
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
