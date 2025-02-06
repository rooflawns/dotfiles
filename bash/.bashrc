#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias cl='clear'
PS1='[\u@\h \W]\$ '
export BROWSER=epiphany
alias ,='nvim'
alias pacs='f() { pacman -Ss  | bat; }; f'

alias sedr='f() { sed -i "$2s/.*/$3/" "$1"; bat "$1"; }; f'
alias sedi='f() { sed -i "${2}i\\${3}" "$1"; bat "$1"; }; f'

alias subl='flatpak run com.sublimetext.three'

alias fvim='nvim $(fzf --preview "bat --style=numbers --color=always --line-range :500 {}")'

alias fsub='subl $(fzf --preview "bat --style=numbers --color=always --line-range :500 {}")'

alias fz='fzf --preview "bat --style=numbers --color=always --line-range :500 {}" | xargs -I {} bat {}'

temp() {
    watch -n 2 "sensors | grep 'Core' | awk '{print \$3}'"
}


