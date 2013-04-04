YELLOW="\[\e[0;33m\]"
GREEN="\[\e[0;32m\]"
WHITE="\[\e[0;37m\]"

function ref(){
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\[\1\]/' || return
}

function sha(){
  git rev-parse --short HEAD 2> /dev/null | sed -e 's/\(.*\)/\[\1\]/' || return
}

function dateOut() {
  date +%H:%M || return
}

NAME=`cat /etc/chef/client.rb | grep 'node_name' | sed 's/.*"\(.*\)"/\1/g'`;

PS1="[\$(dateOut)]$GREEN$NAME$YELLOW\$(ref)\$(sha)\[\e[0m\][\w]\$ "
