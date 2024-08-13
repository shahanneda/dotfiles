# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/shahan/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"

customize_agnoster() {
  prompt_segment 'red' '' ' ⚙ ⚡⚡⚡ ⚙  '
}



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
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autocomplete
)

#cd $ZSH_CUSTOM/plugins
#git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git


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


scpw() {
  local FOLDER="snedadah@linux.student.cs.uwaterloo.ca:~/cs246e/1229/"
  if [ $# -lt 1 ]
  then
    echo "Usage: $funcstack[1] <folder>"
    return
  fi

  scp -v ./* $FOLDER$1
}

alias srcz="source ~/.zshrc"
alias pj="cd /Users/shahan/Documents/Projects"
alias nrd="npm run dev"
alias wat="cd \"/Users/shahan/Documents/Waterloo\""
alias f22="cd \"/Users/shahan/Documents/Waterloo/Fall2022\""
alias watc="cd /Users/shahan/Documents/Waterloo/CS146"
alias watm="cd \"/Users/shahan/Documents/Waterloo/Math 145\""
alias watm7="cd \"/Users/shahan/Documents/Waterloo/Math 147\""
alias cs6="cd \"/Users/shahan/Documents/Waterloo/Fall2022/CS246E\""
alias sshwm="ssh snedadah@linux.student.math.uwaterloo.ca"
alias sshw="ssh snedadah@linux.student.cs.uwaterloo.ca"
alias sshwato="ssh -J snedadah@bastion.watonomous.ca snedadah@delta-ubuntu1.watocluster.local"
alias watcs="cd /Users/shahan/Documents/Waterloo/CS146/Assignment/Solutions"
alias lc="cd /Users/shahan/Documents/Projects/leetcode"
alias tst="/Users/shahan/Documents/Waterloo/CS146/Assignment/Solutions/C/tester.sh"
alias g++14="g++ -std=c++14 -Wall -g"

alias scpwc9="scp /Users/shahan/Documents/Waterloo/CS146/Assignment/Solutions/C/C9/C9.c snedadah@linux.student.cs.uwaterloo.ca:~/cs146/C9/C9.c"

alias scpwm1="scp snedadah@linux.student.cs.uwaterloo.ca:~/cs146/M1/run.sh /Users/shahan/Documents/Waterloo/CS146/Assignment/Solutions/run.sh"

alias scpwm2="scp -r snedadah@linux.student.cs.uwaterloo.ca:/u/cs146/pub /Users/shahan/Documents/Waterloo/CS146/Assignment/Solutions/support"

alias scpwc12="scp /Users/shahan/Documents/Waterloo/CS146/Assignment/Solutions/C/C12/C12.c snedadah@linux.student.cs.uwaterloo.ca:~/cs146/C12/C12.c && scp /Users/shahan/Documents/Waterloo/CS146/Assignment/Solutions/C/C12/C12.h snedadah@linux.student.cs.uwaterloo.ca:~/cs146/C12/C12.h" 

alias sshcsc="ssh snedadah@hfcs.csclub.uwaterloo.ca"
alias sshcsc2="ssh snedadah@caffeine.csclub.uwaterloo.ca"

alias grc="git rebase --continue"

# compc(){
#     if [ "$1" != "" ] # or better, if [ -n "$1" ]
#     then
# 		gcc -std=c99 -Wall C6-driver.c C6.c -o C6 && ./C6 
#     else
# 				printf("PASS ARUGMENT PLEASE!")
#     fi
#     git push
# }


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH=/usr/local/lib/node_modules:$PATH
export PATH="$PATH:/Applications/Racket v7.7/bin"

alias '$'=" "
#enable vim mode
#
bindkey -v
export GPG_TTY=$(tty)
source "/Users/shahan/Documents/Projects/emsdk/emsdk_env.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="${HOME}/.pyenv/shims:${PATH}"
export PATH="${HOME}/.pyenv/shims:${PATH}"

# precmd() { print ">" }
# export PROMPT=""
# adds a new line to the unde
# precmd() { print "\n" }


eval $(thefuck --alias)
# /Users/shahan/.oh-my-zsh/themes/agnoster.zsh-theme
alias python="python3"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/shahanneda/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/shahanneda/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/shahanneda/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/shahanneda/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
