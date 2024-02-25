
# bash completion の設定
bashcomp='/etc/bash_completion'
if [ ! -f $bashcomp ]; then
    apt update
    apt install -y bash-completion
fi
source $bashcomp

# git completion の設定
# git の補完をdownload
# curl -o .git-completion.sh \
#     https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
# curl -o .git-prompt.sh \
#     https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh

if [ -f ~/.git-completion.sh ]; then
    source ~/.git-completion.sh
elif [ whitch curl];    then
    curl -o ~/.git-completion.sh \
        https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
    source ~/.git-completion.sh
fi
if [ -f ./.git-prompt.sh ]; then
    source ~/.git-prompt.sh
elif [ whitch curl];    then
    curl -o ~/.git-prompt.sh \
        https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
    source ~/.git-prompt.sh
fi
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

PS1='[\[\033[32m\]\u@\h\[\033[00m\] \[\033[33m\]\w\[\033[1;36m\]$(__git_ps1 " (%s)")\[\033[00m\]]\n\$ '

# alias の設定
alias ll='ls -la'
