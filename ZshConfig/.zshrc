# to remove the color support error on the starting of terminal
export TERM="xterm-256color"

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt autocd
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/thicckwire/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


# If you come from bash you might have to change your $PATH.
 export PATH=$HOME/bin:/usr/local/bin:$HOME/composer/vendor/bin:$PATH

 #---------------POWERLEVEL9K theme configurations starts---------------

 # Font mode for powerlevel9k
 POWERLEVEL9K_MODE="nerdfont-complete"

#to shorten the pwd length in zsh
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2

 #---------------POWERLEVEL9K theme configurations ends---------------

 #---------------antigen configurations starts---------------

 # Path to load antigen plugins manager
 source $HOME/antigen/antigen.zsh

 # Load the oh-my-zsh's library
 antigen use oh-my-zsh

 # Bundles from the default repo (library in use using 'use' keyword i.e. oh-my-zsh )
 antigen bundle git
 antigen bundle vi-mode
 antigen bundle web-search

 # Bundles from github
 antigen bundle zsh-users/zsh-autosuggestions
 antigen bundle zsh-users/zsh-completions

 # keep syntax highlighting as the last bundle in .zshrc
 antigen bundle zsh-users/zsh-syntax-highlighting

 # Theme from the library in use using 'use' keyword i.e. oh-my-zsh
 # antigen theme agnoster

 # to load theme from github repository robbyrussell/oh-my-zsh
 # which gets stored in  .antigen/bundles/ folder,  the .zsh-theme file
 # in this case has been put in themes folder under the apple.zsh-theme name
 # Format: antigen theme {username}/{repo} {folder}/{filename}.zsh-theme
 # Example: antigen theme robbyrussell/oh-my-zsh themes/apple
 antigen theme bhilburn/powerlevel9k powerlevel9k

 # Tell antigen that you're done
 antigen apply

 #---------------antigen configurations ends---------------

 # Path to your oh-my-zsh installation.
 # export ZSH=$HOME/.oh-my-zsh

 # Set name of the theme to load. Optionally, if you set this to "random"
 # it'll load a random theme each time that oh-my-zsh is loaded.
 # See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
  ZSH_THEME="agnoster"

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
 # plugins=(git vi-mode history-substring-search)

 # source $ZSH/oh-my-zsh.sh

 # User configuration

 # export MANPATH="/usr/local/man:$MANPATH"

 # You may need to manually set your language environment
 # export LANG=en_US.UTF-8

 export EDITOR='vim'
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

 # we can use command xev to find out key code or key symbol of a key
 # run xev and then press the key we want to get info about
 #setup key mappings
# remapkeys() {
# 	xmodmap -e "clear Lock"
# 	xmodmap -e "keycode 9 = Caps_Lock NoSymbol Caps_Lock"
# 	xmodmap -e "keycode 66 = Escape NoSymbol Escape"
# }
# # run cmd on each startup
# remapkeys

# alias for git of .cnf repo of configuration files
#alias cnf='/usr/bin/git --git-dir=$HOME/.cnf/ --work-tree=$HOME'

# laravel aliases
#alias app="php artisan"
#alias cli="app tinker"
#alias fresh="app migrate:fresh"
#alias migrate="app migrate"
#alias phpunit="vendor/bin/phpunit"
#alias seed="app db:seed"
#alias link="app storage:link"
#alias serve="app serve"
#alias cache="app config:cache && app route:cache"
#alias clear="app config:clear && app route:clear && app view:clear && app clear-compiled"

# tmux alias
# -u flag explicitly informs tmux that UTF-8 is supported.
alias tmux="tmux -u"

# tmuxinator aliases
alias up="tmuxinator start update52 update52"

# php tools aliases for project soundlook
#alias document="phpdoc -d ~/soundlookclub --template=\"checkstyle,clean\" -t ~/documentation"
#alias checkup="phpmetrics ~/soundlookclub --report-html=~/checkup"

# zshrc aliases
alias refresh="source ~/.zshrc"

# file explorer shortcut
#alias open="nautilus" 

# alias that remove old .cnf folder and setup new updates to cnf repo.
#alias reInstallCnf="rm -rf ~/.cnf && git clone --bare https://amritpalnagrame@bitbucket.org/amritpalnagrame/cnf.git ~/.cnf && cnf config --local status.showUntrackedFiles no && cnf reset --hard"

# setup prompt to none inspite of username@machine
#prompt_context(){}

#alias for nethogs network monitor
alias ism="sudo nethogs -a"

#alias for setting brightness manually
alias brightness="sudo vim /sys/class/backlight/intel_backlight/brightness"

#to hide username@groupname@computername in shell
export DEFAULT_USER="$(whoami)"

# 10ms for key sequences
#KEYTIMEOUT=1

#to sleep computer ignoring other users log-in
alias csleep="systemctl suspend -i"

#alias for clear screen of terminal
alias cls="clear"

#
# Directory aliases
#

# directory of c# programs in D drive-> "d/Users/G\$\$/Work/Programmig/programs/c\#" in windows
alias csharp="cd /mnt/d/gss/Work/Programming/cSharp-programs"

# to remove delays in escape, from website, https://www.johnhawthorn.com/2012/09/vi-escape-delays/
#10ms for key sequences
KEYTIMEOUT=1
