alias install='sudo apt-get install'
alias isntall='install'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'
alias uninstall='sudo apt-get purge'
alias bitch=''
alias please='sudo $(history -p !!)'
alias lsd='ls -halF'
alias l='lsd'
alias untar='tar -xvf'
alias ggrep='grep -RnIs --color=auto'
alias ffind='find -L . -name'
alias v='vim'
alias vi='vim'
function tn () { tmux new -s $1 || tmux attach -t $1; }
alias tt='tn top'
alias tb='tn bottom'
alias tls='cat ~/tmux_sessions'
alias tlse='vi ~/tmux_sessions'
alias rebash='. ~/.bashrc'
alias realias='. ~/.bash_aliases'

alias nxt='echo `date +"%T"` "--------------- next command ---------------"'

calc () {
  bc -l <<< "$@"
}
