# Path to your oh-my-zsh configuration.
#ZSH=$HOME/.oh-my-zsh
ZSH=$HOME/Dropbox/dotfiles/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="zanshin"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Shortcuts
# alias template="/home/allibubba/Projects/rails-composer/composer.rb"
# alias d="cd ~/Documents/Dropbox"
# alias p="cd ~/Projects"
# alias t="cd ~/Tasks"
# alias rs="rails s"
# alias rc="rails c"
# alias seed_dump="rake db:seed:dump WITH_ID=1"

# alias ga="git add -A"
# alias gc="git commit -av"
# alias gp="git push"


# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)
plugins=(sublime)

source $ZSH/oh-my-zsh.sh
source ~/.aliases
source ~/.functions
source ~/.zshrc_local
alias v="mvim"
	
# Customize to your needs...
#export PATH=/home/allibubba/.rvm/gems/ruby-1.9.3-p194/bin:/home/allibubba/.rvm/gems/ruby-1.9.3-p194@global/bin:/home/export PATH=$HOME/.rbenv/bin:/opt/local/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

# # helpers
# function bundlit {
#   echo "Install gems to project?";
#   select result in yes no cancel
#   do
#       case $result in
#         yes ) bundle install --path vendor/bundle; break;;
#         no ) bundle install; break;;
#         cancel ) break;;
#       esac
#   done  
# }


# function unzip {
#   echo "unzipping $1";
#   tar -zxvf $1
# }

# function port {
#   echo "returning pid of what is running on port: $1";
#   lsof -t -i:$1
# }

# ruby
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
#PATH=$PATH:$HOME/.rvm/bin


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

#tsung reporting
#alias treport="/usr/lib/tsung/bin/tsung_stats.pl; firefox report.html"
alias treport="/usr/lib/tsung/bin/tsung_stats.pl; /opt/google/chrome/google-chrome --enable-plugins report.html"

alias server="python -m SimpleHTTPServer 8080; /opt/google/chrome/google-chrome --enable-plugins http://0.0.0.0:8080"


export RBENV_ROOT="${HOME}/.rbenv"
if [ -d "${RBENV_ROOT}" ]; then
  export PATH="${RBENV_ROOT}/bin:${PATH}"
  eval "$(rbenv init -)"
fi
eval "$(rbenv init -)"


export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
