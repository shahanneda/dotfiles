


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
#alias vim "nvim"


# Check if a person is on macos:
if test (uname) = "Darwin"
    pyenv init - | source
end
python ~/Documents/projects/syncer/check_last_sync.py

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/shahanneda/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/home/shahanneda/Downloads/google-cloud-sdk/path.fish.inc'; end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/shahanneda/miniconda3/bin/conda
    eval /home/shahanneda/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/shahanneda/miniconda3/etc/fish/conf.d/conda.fish"
        . "/home/shahanneda/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/shahanneda/miniconda3/bin" $PATH
    end
end
# <<< conda initialize <<<

fish_add_path /home/shahanneda/.pixi/bin

fish_prompt Astronaut

