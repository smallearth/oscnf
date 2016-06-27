export PATH=/usr/local/mysql/bin:$PATH
export PATH=/usr/local/Cellar/php56/5.6.21/bin:$PATH
export PATH=/usr/local/Cellar/php56/5.6.21/sbin/:$PATH

##
# alias
##
alias cdhome='cd ~'
alias ll='ls -al'
alias cdroot='cd /'
alias gpull='git pull'
alias gci='git commit -a'
alias gpush='git push origin HEAD:refs/for/master'
alias gst='git status'

alias sshif='sshpass -p Jacksun57287*# ssh -p 22 sunquan@172.30.204.39'
alias ssh35='sshpass -p sunquan ssh -p 22 sunquan@172.30.204.35'
alias sshali='sshpass -p sq792143*# ssh -p 22 jacksq@115.28.107.128'

alias killphp="ps aux | grep php | awk '{print $1}'|xargs kill -9"
alias killnginx="ps aux | grep nginx | awk '{print $1}'|xargs kill -9"


##
# bash
##
PS1='[\u:\W \$] '

##
# memcache
##
alias memcache='telnet 127.0.0.1 11211'

export PATH="$(brew --prefix homebrew/php/php56)/sbin:$PATH"
