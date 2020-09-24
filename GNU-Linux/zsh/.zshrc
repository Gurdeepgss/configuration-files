# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
# add sqlcmd for mssql-server to path
export PATH=$PATH:/opt/mssql-tools/bin
# add yarn to path
export PATH="$PATH:/opt/yarn-1.22.5/bin"

# this did not work in WSL, antigen bundle vi-mode did
# Vi-mode is ZSH shell
set -o vi
#bindkey -v

export KEYTIMEOUT=1

#set gnome-terminal for gogh(color Schemes for terminal) to function
export TERMINAL="gnome-terminal"

#POWERLINE_CONFIG_COMMAND for Powerline working with Tmux
#export POWERLINE_CONFIG_COMMAND="~/.tmux/plugins/powerline/powerline/bindings/tmux/powerline.conf"
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Enable 256 colors in terminal
export TERM="xterm-256color"

# Path to your oh-my-zsh installation.
export ZSH="/home/thicckwire/.oh-my-zsh"

# hide username@group in prompt
export DEFAULT_USER="$(whoami)"

# set default editor as Vim
export EDITOR=vim

# Antigen theme specifiedTheme is used
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="agnoster"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

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

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#


# Antigen Configuration
#---------------------------------------------------------------------------------------#
source /home/thicckwire/antigen/antigen.zsh

#Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle vi-mode
antigen bundle git-prompt
antigen bundle command-not-found
antigen theme romkatv/powerlevel10k
antigen bundle zsh-users/zsh-autosuggestions

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Tell Antigen that you're done.
antigen apply
#---------------------------------------------------------------------------------------#


# Aliases
#---------------------------------------------------------------------------------------#
alias cls='clear'
alias tmux='tmux -u'

# below comment is from https://classic.yarnpkg.com/en/docs/install/#debian-stable .
# Due to the use of nodejs instead of node name in some distros, yarn might complain about
# node not being installed. A workaround for this is to add an alias in your .bashrc file,
# like so: alias node=nodejs. This will point yarn to whatever version of node you decide
# to use.
alias node=nodejs
#---------------------------------------------------------------------------------------#

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
