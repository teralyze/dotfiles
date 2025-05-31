#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias vi='nvim'
alias viopen='nvim $(fzf -m --preview="bat --color=always {}")'
alias temps='watch --color -n 1 ~/.temperatures.sh'

alias pi='sudo pacman -S' # /P/acman /I/nstall
alias pr='sudo pacman -Rns' # /P/acman /R/emove
alias prr='sudo pacman -Rcs' # /P/acman /R/emove /R/ecursively
alias ps='sudo pacman -Qs' # /P/acman /S/earch (installed apps)
alias pq='sudo pacman -Ss' # /P/acman /Q/uery (repos)

# PS1='[\u@\h \W]\$ '

neofetch
eval "$(starship init bash)"
source ~/.local/share/blesh/ble.sh
