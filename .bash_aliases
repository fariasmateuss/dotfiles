# from oh-my-zsh
alias ...='cd ../..'
alias ....='cd ../../..'
alias d='dirs -v | head -10'

#personal
alias cp='cp -v'
alias dkill='docker stop $(docker ps -a -q)'
alias drm='docker rm $(docker ps -a -q)'
alias drma='docker system prune -a --volumes # dkill; drm; drmi; drmv'
alias drmi='docker rmi -f $(docker images -q); docker rmi -f $(docker images -f "dangling=true" -q)'
alias l='ls -F '
alias la='ls -AF '
alias ll='ls -lF '
alias more=less
alias mv='mv -v'
alias prev='open -a Preview'
alias rm_node_modules='$FD -t d -u node_modules -x rm -rf'
alias resolution='system_profiler SPDisplaysDataType | grep Resolution'
alias generate_password='LC_ALL=C tr -dc "[:alnum:]" < /dev/urandom | head -c 20 | pbcopy  '