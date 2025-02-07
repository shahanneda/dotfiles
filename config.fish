# Add this at the top of your config.fish
# set -gx PATH "" # Clear PATH
# # set -gx PATH /usr/local/bin /usr/bin /bin /usr/sbin /sbin # Set basic PATH
# set -gx fish_user_paths /Users/shahanneda/.jenv/shims /Users/shahanneda/.jenv/shims /Users/shahanneda/.jenv/bin /opt/homebrew/sbin /Users/shahanneda/Documents/classes/F24/cs451/spark-2.3.1-bin-hadoop2.6/bin /Users/shahanneda/.pixi/bin /Users/shahanneda/.cargo/bin /Users/shahanneda/Library/Application\ Support/Coursier/bin /Users/shahanneda/Documents/classes/F24/cs451/spark-2.3.1-bin-without-hadoop/bin /Users/shahanneda/Documents/classes/F24/cs451/spark-2.3.1/bin /Users/shahanneda/Documents/classes/F24/cs451/hadoop-3.0.3/bin /opt/homebrew/bin /usr/local/bin /System/Cryptexes/App/usr/bin /usr/bin /bin /usr/sbin /sbin /var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin /var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin /var/run/com.apple.security.cryptexd/codex.system/bootstr


for line in (cat ~/dotfiles/env_vars.txt)
    set var (echo $line | cut -d= -f1)
    set value (echo $line | cut -d= -f2)
    set -gx $var (eval echo $value)
end


function conda_debug --on-event fish_prompt
    # echo "Current PATH:"
    # echo $PATH | tr ' ' '\n'
    # echo "Current Python:"
    # which python
end

# nvm use latest
alias gac "git add --all && git commit"
alias grc "git add --all && git rebase --continue"
alias gaa "git add --all"
alias gs "git status"
alias gp "git push"
alias grh "git reset --hard"
alias nrd "npm run dev"
alias ovac "cd ~/Documents/Vault/ && git add --all && git commit -m \"Notes\" && git push"
alias fishconf "vim ~/dotfiles/config.fish"
alias ch "/opt/google/chrome/google-chrome --js-flags=\"--stack-trace-limit 10000\""
alias cdd 'cd $(find --type directory | fzf || echo .)' # The "|| echo ." makes it so if we cancel the fzf command, we don't change to a diff directory
alias rg "rg --color=always"



fish_vi_key_bindings
fish_add_path ~/.local/bin
fish_add_path ~/.cargo/bin
fish_add_path "/Users/shahanneda/Library/Application Support/Coursier/bin"
fish_add_path ~/.orbstack/bin


set -gx SPARK_HOME ~/Documents/classes/F24/cs451/spark-2.3.1-bin-hadoop2.6
set -gx HADOOP_HOME ~/Documents/classes/F24/cs451/hadoop-3.0.3
fish_add_path ~/Documents/classes/F24/cs451/spark-2.3.1-bin-hadoop2.6/bin
fish_add_path ~/Documents/classes/F24/cs451/hadoop-3.0.3/bin

function set_java_home
    set -x JAVA_HOME (/usr/libexec/java_home -v $argv)
end
set_java_home 1.8


# Remove pyenv paths
set PATH (string match -v "*pyenv*" $PATH)
#alias vim "nvim"



# # Check if a person is on macos:
# if test (uname) = "Darwin"
#     pyenv init - | source
# end
python $HOME/Documents/projects/syncer/check_last_sync.py

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/shahanneda/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/home/shahanneda/Downloads/google-cloud-sdk/path.fish.inc'; end


# Disable pyenv temporarily
# set -e PYENV_ROOT
# set -e PYENV_VERSION
# set -e PYENV_SHELL

# # Ensure conda path takes precedence
# set -gx PATH /opt/homebrew/Caskroom/miniforge/base/bin $PATH
# Remove any pyenv from PATH
# set PATH (string match -v "*pyenv*" $PATH)
# Ensure conda path takes precedence
# set -gx PATH /opt/homebrew/Caskroom/miniforge/base/bin $PATH
# set -gx PATH /opt/homebrew/Caskroom/miniforge/base/envs/cs486/bin $PATH

# fish_add_path /home/shahanneda/.pixi/bin

fish_prompt Astronaut

set -x PATH $HOME/.jenv/bin $PATH
status --is-interactive; and source (jenv init -|psub)
fish_add_path /Users/shahanneda/.pixi/bin



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /opt/homebrew/Caskroom/miniforge/base/bin/conda
    eval /opt/homebrew/Caskroom/miniforge/base/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/opt/homebrew/Caskroom/miniforge/base/etc/fish/conf.d/conda.fish"
        . "/opt/homebrew/Caskroom/miniforge/base/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/opt/homebrew/Caskroom/miniforge/base/bin" $PATH
    end
end
# <<< conda initialize <<<

