# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/kartof/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias open="xdg-open"
alias getpass="cat ~/tesis/vmpass.txt | xclip -sel clip"
alias sshcr="ssh -XC sdiaz@feynman.fis.puc.cl"
alias nvidia-run="__NV_PRIME_RENDER_OFFLOAD=1 __VK_LAYER_NV_optimus=NVIDIA_only __GLX_VENDOR_LIBRARY_NAME=nvidia"
alias lc='colorls'
alias ksshb='kitty +kitten ssh -XC sdiaz@bohr.fis.puc.cl'
alias kssh='kitty +kitten ssh -XC sdiaz@feynman.fis.puc.cl'
alias l='ls -lh --color=always --group-directories-first --sort=size'
alias ls='ls -h --color=auto'
alias rm='rm -i'


alias import-tloop='scp -r sdiaz@feynman.fis.puc.cl:~/bilayer/data/tLoop/ ~/tesis/bilayer/remote/'
alias import-sloop='scp -r sdiaz@feynman.fis.puc.cl:~/bilayer/data/sLoop/ ~/tesis/bilayer/remote/'
alias import-hloop='scp -r sdiaz@feynman.fis.puc.cl:~/bilayer/data/hLoop/ ~/tesis/bilayer/remote/'
alias export-source='scp -r ~/tesis/bilayer/Source/ sdiaz@feynman.fis.puc.cl:~/bilayer/'
alias hloop='make -f makehloop'
alias tloop='make -f maketloop'
alias sloop='make -f makesloop'
alias gen='make -f makegen' 

alias g='grep'
alias zshrc='nvim ~/.zshrc'
alias rzsh='source ~/.zshrc'
alias cpwd="current_dir=\"\$(pwd)\"; cd_command=\"cd '\$current_dir'\"; echo -n \"\$cd_command\" | xclip -selection clipboard; echo \"Copied to clipboard: \$cd_command\""
alias vim='nvim'
alias intl='setxkbmap -layout us -variant intl' 

alias mc='nohup prime-run ~/.minecraft/launcher/minecraft-launcher &'

export MANPATH="/usr/local/texlive/2023/texmf-dist/doc/man:$MANPATH"
export INFOPATH="/usr/local/texlive/2023/texmf-dist/doc/info:$INFOPATH"
export PATH="/usr/local/texlive/2023/bin/x86_64-linux:$PATH"
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"


#Platanus
alias bds="bin/webpack-dev-server || bin/webpacker-dev-server || bin/vite dev"

#Nodenv 
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"
#Rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

