### ADDING TO THE PATH
set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH
set -gx PATH /opt/homebrew/bin $PATH

# Go
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

### EXPORT ###
set fish_greeting
set -gx EDITOR vim

### ALIASES ###
# bare git repo alias for dotfiles
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

#navigation
alias d='cd ~/Desktop; exa -al --color=never --group-directories-first'
alias p='cd ~/Projects; exa -al --color=never --group-directories-first'

# colorize grep output (good for log files)
alias grep='grep --color=auto'

# macvim
if test -e /opt/homebrew/bin/mvim
    alias vim='mvim'
    alias vi='mvim'
end

set -g SHELL $(which fish)

### ABBRIVATIONS ###
abbr q 'exit'
abbr m 'make'
abbr t 'tmux new -s dot || tmux attach-session -t dot'

# translate
abbr tr 'trans :ru'

# docker
abbr dc 'docker compose'
abbr dps 'docker ps -a'

# git
abbr gs 'git status'
abbr ga 'git add -A'
abbr gc 'git commit'
abbr gd 'git diff'

# changing "ls" to "exa"
alias ls='exa -al --color=never --group-directories-first'
alias ll='exa -al --color=never --group-directories-first'
alias lt='exa -aT --color=never --group-directories-first' # tree listing
alias l.='exa -a | egrep "^\."'

# navigation
abbr .. 'cd ..'
abbr .2 'cd ../..'
abbr .3 'cd ../../..'

# monitoring
abbr psa 'ps auxf'

### BASE16 SHELL ###
if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end

### FZF ###
set fzf_fd_opts --no-ignore --hidden --exclude=.git

### DIRENV ###
direnv hook fish | source
