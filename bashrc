alias px="mosh 10.55.55.115"
alias colo="mosh root@xxxxxxx.io"
alias mail="mosh root@xxxxxxxx.blue"
alias sol="sudo eopkg"
alias update="echo -e updating$'\n'system... && sudo eopkg up -y && sudo snap refresh && echo \nnpm... && sudo npm update && echo flatpak... && flatpak update && sudo npm install -g npm && sudo pip install --upgrade pip"
alias rename='mv'

# alias please="sudo !!" < doesn't work anymore
alias please='sudo $(history -p !!)' # appears to work on modern linux distro's
# alternatively use
# alias please='sudo $(fc -ln -1)' # this works on zsh shell too
