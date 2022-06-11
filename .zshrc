#TODO: Organise this file

#------------------------------###DEFAULT###----------------------
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="/Users/warmachine/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship"
# eval "$(starship init zsh)"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-completions zsh-syntax-highlighting colored-man-pages command-not-found )
. ~/z.sh

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#------------------------------###Requirements###----------------------
export EDITOR="code -w"
eval "$(rbenv init -)"

# export YVM_DIR=/Users/warmachine/.yvm
# [ -r $YVM_DIR/yvm.sh ] && . $YVM_DIR/yvm.sh

#------------------------------###PERSNOL ALIAS###----------------------
# PERSNAL ALIAS
# open ~/.zshrc in using the default editor specified in $EDITOR
alias ec="$EDITOR $HOME/.zshrc"

# source ~/.zshrc
alias sc="source $HOME/.zshrc"

# reset DB initialize DB
alias dbr="bundle exec rails db:drop db:create db:migrate"
alias rs="bundle exec rails db:reset && rails s -p 3001"
alias rp="bundle exec rails db:reset && yarn start"
unsetopt correct_all


#------------------------------###PERSNOL SCRIPTS###----------------------
#
# Alert when the internet is back. Useful when you have unstable internet.
# check_internet () {
#   while true; do
#     if (curl google.com -s --max-time 2 > /dev/null); then
#       say "Internet is back"
#       echo "Internet is back"
#       break
#     fi
#     sleep 1
#   done
# }

# Get last n time entry logs

# To get the last 15 commit messages
# Call it from the terminal as:
# > timeEntry 15
#
timeEntry() {
  echo "--------------------------------------------"
  echo "Printing commit messages for last $1 commits"
  echo "--------------------------------------------"
  git --no-pager log -$1 --reverse --pretty=format:%B | tr -s '\n' '\n'
  echo "--------------------------------------------"
}

# ----------------------------------

# # Created by manan for 4.4.2

# #Customise the Powerlevel9k prompts
# # POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
# # ssh
# # dir
# # vcs
# # newline
# # status
# # )
# # POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
# # POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
# # # POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
# # POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND='red'
# # POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND='blue'

# # Options for setting colors to directories.

# # POWERLEVEL9K_DIR_HOME_BACKGROUND=red
# # POWERLEVEL9K_DIR_HOME_FOREGROUND=white
# # POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND=red
# # POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND=white
# # POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND=yellow
# # POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND=black
# # POWERLEVEL9K_DIR_DEFAULT_BACKGROUND=red
# # POWERLEVEL9K_DIR_DEFAULT_FOREGROUND=white

# # Load Nerd Fonts with Powerlevel9k theme for Zsh
# # POWERLEVEL9K_MODE='nerdfont-complete'
# # source  ~/Spaces/Editor-Settings/powerlevel9k/powerlevel9k.zsh-theme

# HOMEBREW_FOLDER="/usr/local/share"
# source "$HOMEBREW_FOLDER/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
# source "$HOMEBREW_FOLDER/zsh-autosuggestions/zsh-autosuggestions.zsh"
# source "$HOMEBREW_FOLDER/zsh-history-substring-search/zsh-history-substring-search.zsh"
# Load completion config
source /Users/warmachine/.zsh/completion.zsh

# Initialize the completion system
autoload -Uz compinit;
typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi

zmodload -i zsh/complist

# #History setup
# HISTFILE=$HOME/.zsh_history
# HISTSIZE=100000
# SAVEHIST=$HISTSIZ

setopt hist_ignore_all_dups # remove older duplicate entries from history
# setopt hist_reduce_blanks # remove superfluous blanks from history items
setopt inc_append_history # save history entries as soon as they are entered
setopt share_history # share history between different instances of the shell
setopt auto_cd # cd by typing directory name if it's not a command
# setopt correct_all # autocorrect commands
setopt auto_list # automatically list choices on ambiguous completion
setopt auto_menu # automatically use menu completion
setopt always_to_end # move cursor to end if word had one match

zstyle ':completion:*' menu select # select completions with arrow keys
zstyle ':completion:*' group-name '' # group results by category
zstyle ':completion:::::' completer _expand _complete _ignored _approximate #enable approximate matches for completion

#Plugins setup
source <(antibody init)
antibody bundle zdharma/fast-syntax-highlighting > ~/.zshrc.log
antibody bundle zsh-users/zsh-autosuggestions > ~/.zshrc.log
antibody bundle zsh-users/zsh-history-substring-search > ~/.zshrc.log
antibody bundle zsh-users/zsh-completions > ~/.zshrc.log
antibody bundle robbyrussell/oh-my-zsh path:plugins/heroku > ~/.zshrc.log
antibody bundle robbyrussell/oh-my-zsh path:plugins/node > ~/.zshrc.log
antibody bundle robbyrussell/oh-my-zsh path:plugins/web-search > ~/.zshrc.log
antibody bundle robbyrussell/oh-my-zsh path:plugins/sudo > ~/.zshrc.log
antibody bundle robbyrussell/oh-my-zsh path:plugins/react-native > ~/.zshrc.log
antibody bundle robbyrussell/oh-my-zsh path:plugins/kubectl > ~/.zshrc.log
antibody bundle robbyrussell/oh-my-zsh path:plugins/npm > ~/.zshrc.log
antibody bundle JamesKovacs/zsh_completions_mongodb > ~/.zshrc.log

# # autoload -Uz compinit;compinit -i

# # Aliases

# # alias grep=ack
# # alias digitalocean="ssh digitalocean"
# # alias ls="colorls"
# alias python="python3"
# alias pip="pip3"
# alias easy-install="easy_install-3.7"
# # alias config="vi $HOME/.zshrc"
# # alias projects="cd $HOME/Spaces/Projects"
# alias reload="source $HOME/.zshrc"

# Git aliases
alias gi="git init"
alias gs="git status -sbu"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gp="git push"
alias gm="git merge"
alias ga="git add ."
alias gcm="git commit -m"
alias gpl="git pull"
alias gst="git stash"
alias gstl="git stash list"
alias glg='git log --graph --oneline --decorate --all'
alias rspec='nocorrect rspec'

# # Exports

# export PATH="/usr/local/opt/libpcap/bin:$PATH"

# fpath=(/usr/local/share/zsh-completions $fpath)
# # export PATH="/usr/local/opt/icu4c/bin:$PATH"
# # export PATH="/usr/local/opt/icu4c/sbin:$PATH"

# export PYTHON3PATH=/Library/Frameworks/Python.framework/Versions/3.7
# export PATH=$PYTHON3PATH/bin:$PATH

# # export PATH=/usr/local/aws/bin:$PATH

# # export PATH=$PATH:$HOME/sdk/flutter/bin

# # added by travis gem
# # [ -f /Users/manan/.travis/travis.sh ] && source /Users/manan/.travis/travis.sh

# # Misc
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Tab title
precmd() {
  # sets the tab title to current dir
  echo -ne "\e]1;${PWD##*/}\a"
}

# # Create a new react app

# react-app() {
#   npx create-react-app $1
#   cd $1
#   npm i -D eslint
#   npm i -D eslint-config-prettier eslint-plugin-prettier
#   npm i -D eslint-config-airbnb eslint-plugin-import eslint-plugin-jsx-a11y eslint-plugin-react eslint-plugin-react-hooks
#   cp "${HOME}/.eslintrc.json" .
#   cp "${HOME}/.prettierrc" .
#   echo $1 > README.md
#   rm -rf yarn.lock
#   cd src
#   rm -f App.css App.test.js index.css logo.svg serviceWorker.js
#   mkdir components views
#   git add -A
#   git commit -m "Initial commit."
#   cd ..
#   clear
#   code .
# }
# -------------
# COLORLS
# source $(dirname $(gem which colorls))/tab_complete.sh
# alias lc='colorls -lA --sd'

# export GPG_TTY=$(tty)




# [[ -s "/Users/warmachine/.gvm/scripts/gvm" ]] && source "/Users/warmachine/.gvm/scripts/gvm"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/v8@3.15/bin:$PATH"
