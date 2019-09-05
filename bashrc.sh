# Colors
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

if [[ "$(uname)" == "Darwin" ]]; then
    alias ls='ls -G'
else
    alias ls='ls --color=auto'
fi

# Shortcuts
alias e=emacs
alias d='cd ~/Downloads'
alias g=git

# Dev
alias haskell-cabal-sandbox-path='export PATH="$PWD"/.cabal-sandbox/bin:"$PATH"'

export HISTSIZE=10000
export HISTFILESIZE=20000
