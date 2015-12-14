# Path to your oh-my-zsh installation.
export ZSH=/Users/tanaysalpekar/.oh-my-zsh
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export EDITOR="vim"

ZSH_THEME="robbyrussell"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(rails git hub)

# User configuration

export PATH="/Users/tanaysalpekar/.rvm/gems/ruby-2.1.2/bin:/Users/tanaysalpekar/.rvm/gems/ruby-2.1.2@global/bin:/Users/tanaysalpekar/.rvm/rubies/ruby-2.1.2/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/Users/tanaysalpekar/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# Example aliases
alias ..z="vim ~/.zshrc"
alias ..v="vim ~/.vimrc"
alias ..t="vim ~/.tmux_conf"
alias cdcl="cd ~/Documents/Class" 
alias cdco="cd ~/Documents/corkcrm" 
