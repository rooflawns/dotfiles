# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
#plugins=(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete)
plugins=(zsh-syntax-highlighting fast-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$PATH:/home/rooflawn/.local/bin

alias n='nvim'
alias hp='hyprpm'
alias wifi='nmtui'
alias diskcheck='lsblk'
alias s='sudo'
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias pacs='f() { pacman -Ss  | bat; }; f'

alias sedr='f() { sed -i "$2s/.*/$3/" "$1"; bat "$1"; }; f'
alias sedi='f() { sed -i "${2}i\\${3}" "$1"; bat "$1"; }; f'


alias fvim='nvim $(fzf --preview "bat --style=numbers --color=always --line-range :500 {}")'


alias fz='fzf --preview "bat --style=numbers --color=always --line-range :500 {}" | xargs -I {} bat {}'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

alias cl='clear'

temp() {
    watch -n 2 "sensors | grep 'Core' | awk '{print \$3}'"
}

eval "$(oh-my-posh init zsh --config /home/rooflawn/.themes/theme1.omp.json)"


################
#    TMUX      #
################


alias tm='tmux'

