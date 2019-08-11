# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/amanchokshi/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

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
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
        zsh-autosuggestions
        zsh-syntax-highlighting
        vi-mode)

export KEYTIMEOUT=1
export RPS1="%{$reset_color%}"        
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

# source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# Window title is now the machine name: evernight / ssh
ZSH_THEME_TERM_TITLE_IDLE="%m"


# Remove underline from syntax highlighting plugin
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

# add-zsh-hook precmd vcs_info

# alias config='/usr/bin/git --git-dir=$HOME/dotfiles.git/ --work-tree=$HOME'

# export PATH="/Applications/anaconda3/bin:$PATH"


# Pure Theme 
# autoload -U promptinit; promptinit


# PROMPT='%F{green}%n%f in %F{red}%1~'$PROMPT

# optionally define some options
# PURE_CMD_MAX_EXEC_TIME=90

# change the path color
# zstyle :prompt:pure:path color red

# change the color for both `prompt:success` and `prompt:error`
# zstyle ':prompt:pure:prompt:*' color cyan

# prompt pure

# PROMPT='%F{green}%n%f in %F{red}%1~'$PROMPT

# prompt_newline='%666v'

# PROMPT=" $PROMPT"

# Then, replace the set title function with an empty one.
# prompt_pure_set_title() {}


# Spaceship Theme

SPACESHIP_PROMPT_ORDER=(
  venv          # virtualenv section
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  package       # Package version
  node          # Node.js section
  ruby          # Ruby section
  elixir        # Elixir section
  xcode         # Xcode section
  swift         # Swift section
  golang        # Go section
  php           # PHP section
  rust          # Rust section
  haskell       # Haskell Stack section
  julia         # Julia section
  docker        # Docker section
  aws           # Amazon Web Services section
  conda         # conda virtualenv section
  pyenv         # Pyenv section
  dotnet        # .NET section
  ember         # Ember.js section
  kubecontext   # Kubectl context section
  terraform     # Terraform workspace section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  vi_mode       # Vi-mode indicator
  exit_code     # Exit code section
  char          # Prompt character
)

# No lineline character before each prompt line 
SPACESHIP_PROMPT_ADD_NEWLINE=false

# Prompt cursor character stuff
SPACESHIP_CHAR_SUFFIX=" "
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SYMBOL_ROOT="❯"
SPACESHIP_CHAR_SYMBOL_SECONDARY="❯"
SPACESHIP_CHAR_COLOR_SUCCESS=white
SPACESHIP_CHAR_COLOR_FAILURE=white  
SPACESHIP_CHAR_COLOR_SECONDARY=white


# User stuff
SPACESHIP_USER_SHOW=always
SPACESHIP_USER_PREFIX="" # remove `with` before username
SPACESHIP_USER_SUFFIX=" "
SPACESHIP_USER_COLOR=green
SPACESHIP_USER_COLOR_ROOT=green

# Directory Stuff
SPACESHIP_DIR_PREFIX="» "
SPACESHIP_DIR_TRUNC=1
SPACESHIP_DIR_TRUNC_REPO=false
SPACESHIP_DIR_COLOR=red

# Git stuff
SPACESHIP_GIT_PREFIX="» "
SPACESHIP_GIT_SYMBOL=""
SPACESHIP_GIT_BRANCH_PREFIX=""
SPACESHIP_GIT_BRANCH_COLOR=blue
SPACESHIP_GIT_STATUS_PREFIX="["
SPACESHIP_GIT_STATUS_COLOR=blue

# Virtual env stuff
SPACESHIP_VENV_SUFFIX=" » "
SPACESHIP_VENV_GENERIC_NAMES=()
SPACESHIP_VENV_COLOR=yellow

# Execution Time 
SPACESHIP_EXEC_TIME_PREFIX=""
SPACESHIP_EXEC_TIME_COLOR=yellow
SPACESHIP_EXEC_TIME_ELAPSED=300

# vi-mode
PACESHIP_VI_MODE_PREFIX=""
SPACESHIP_VI_MODE_SUFFIX=""
SPACESHIP_VI_MODE_INSERT=""
SPACESHIP_VI_MODE_NORMAL="❯"





alias config='/usr/bin/git --git-dir=$HOME/dotfiles.git/ --work-tree=$HOME'

export PATH="/Applications/anaconda3/bin:$PATH"

# MacPorts Installer addition on 2019-06-26_at_14:00:09: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# sshfs mount
alias ozstar_sshfs="sshfs ozstar:/fred/oz048/achokshi ~/Ozstar/"

alias ni='nvim'
# export PATH="~/.npm-global/bin:$PATH"

export MWA_ASVO_API_KEY=42baa06f-b863-4acf-a30b-85262c43d614

export LC_ALL=en_US.UTF-8
