# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
source /home/linuxbrew/.linuxbrew/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/pugnace/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/pugnace/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/pugnace/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/pugnace/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
alias txpy="tmuxp load ~/.config/tmuxp/pythonDev.yaml"
alias txkl="tmux kill-session"
alias codium="/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=/app/bin/codium --file-forwarding com.vscodium.codium --no-sandbox --unity-launch @@ %F @@"
export PATH=/home/pugnace/.cargo/bin:$PATH
EDITOR=vim
