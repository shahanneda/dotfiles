


# Setup env vars
for line in (cat ~/dotfiles/env_vars.txt)
    set var (echo $line | cut -d= -f1)
    set value (echo $line | cut -d= -f2)
    set -gx $var (eval echo $value)
end


# nvm use latest
alias gac "git add --all && git commit"
alias grc "git add --all && git rebase --continue"
alias nrd "npm run dev"
alias ovac "cd ~/Documents/Vault/ && git add --all && git commit -m \"Notes\" && git push"
alias fishconf "vim ~/dotfiles/config.fish"
alias ch "/opt/google/chrome/google-chrome --js-flags=\"--stack-trace-limit 10000\""



fish_vi_key_bindings
fish_add_path ~/.local/bin
fish_add_path ~/.cargo/bin
fish_add_path ~/Documents/classes/F24/cs451/hadoop-3.0.3/bin
fish_add_path ~/Documents/classes/F24/cs451/spark-2.3.1-bin-without-hadoop/bin
fish_add_path "/Users/shahanneda/Library/Application Support/Coursier/bin"

function set_java_home
    set -x JAVA_HOME (/usr/libexec/java_home -v $argv)
end
set_java_home 1.8


#alias vim "nvim"



# # Check if a person is on macos:
# if test (uname) = "Darwin"
#     pyenv init - | source
# end
python $HOME/Documents/projects/syncer/check_last_sync.py

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/shahanneda/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/home/shahanneda/Downloads/google-cloud-sdk/path.fish.inc'; end

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

fish_add_path /home/shahanneda/.pixi/bin

fish_prompt Astronaut

set -x PATH $HOME/.jenv/bin $PATH
status --is-interactive; and source (jenv init -|psub)
fish_add_path /Users/shahanneda/.pixi/bin
