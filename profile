set match-hidden-files off

set page-completions off
set completion-query-items 350

# create big history file 
export HISTSIZE=20000
export HISTFILESIZE=20000

# Now bash writes and re-reads the history file every time it prints a new prompt for you.
export PROMPT_COMMAND="history -a ; history -n;  ${PROMPT_COMMAND}"


shopt -s histappend
# don't put duplicate lines in the history and ignore same sucessive entries. 
export HISTCONTROL=ignoreboth 


# GIT ------------------------------------
# show current branch on shell
source ~/.gh-dotfiles/bash_git
source ~/.gh-dotfiles/task_completion.sh

BRANCH_COLOR="\[\033[49;43m\]"
ARROW_BRANCH="\[\033[40;33m\]⮀"
BLACK="\[\033[0;38m\]"
USER_INFO_ARROW="\[\033[47;30m\]⮀"
DIRECTORY_COLOR="\[\033[47;30m\]"
DIRECTORY_ARROW="\[\033[49;37m\]⮀"
PROMPT_ARROW="\[\033[49;30m\]⮀"
PROMPT_COLOR="\[\033[40;33m\]"

export PS1="$DIRECTORY_COLOR$BRANCH_COLOR\$(parse_git_branch) $ARROW_BRANCH$PROMPT_COLOR \u ⮁ \h $USER_INFO_ARROW$DIRECTORY_COLOR \W $DIRECTORY_ARROW\n$PROMPT_COLOR\$(parse_git_dirty)$PROMPT_ARROW$BLACK"


# add short cut keys for terminal app
# Ctrl left   right word
# Ctrl right  forward word
# up          history search backward
# down        history search forward
bind -f ~/.gh-dotfiles/bash_bindings

# rails alias
alias r="rails"

# nodemon alias
alias digimon="nodemon"
alias pokemon="nodemon"

# vim alias
alias mvimt="mvim --remote-tab"
alias v="vim"
alias gv="gvim"
alias gk="gitk --all &"

# git alias
alias gpair='git config --global user.name "Alberto Alcaraz + Daniel Guzman" ; git config --global user.email "alberto.alcaraz@tangosource.com + daniel.guzman@tangosource.com" '
alias gme='git config --global user.name "Alberto Alcaraz" ; git config --global user.email "jaalcarazz@yahoo.com" '
alias gts='git config --global user.name "Alberto Alcaraz" ; git config --global user.email "alberto.alcaraz@tangosource.com" '
alias gconfig='git config --list'
alias gimpact="git log --shortstat --author \"Alberto Alcaraz\" | grep \"files changed\" | awk '{files+=\$1; inserted+=\$4; deleted+=\$6} END {print \"Files changed:\", files, \"Lines inserted:\", inserted, \"Lines deleted:\", deleted}'"
alias glk='git log --graph --full-history --all --color --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'

# task alias
alias t="task"
alias n="nautilus . &"
alias :q='exit'
alias cp_ssh="xclip ~/.ssh/id_rsa.pub | xclip -o | xclip -sel clip"

#console alias

# annex alias
alias gan="git annex"

export PATH=$PATH:~/.gh-dotfiles/bin

# set editor for gem open
export EDITOR=vim

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
