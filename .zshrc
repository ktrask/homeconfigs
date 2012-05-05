# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#export ZSH_THEME="robbyrussell"
export ZSH_THEME="ktrask"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git perl)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/opt/java/jre/bin:/opt/kde/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/lib/perl5/vendor_perl/bin:/usr/bin/core_perl:/opt/qt/bin:/home/ktrask/bin

alias ls='ls -BF --color=always'
alias "cdB"="cd $HOME/Bildung/studium/master-physik/semester_4/"
alias "cdM"="cd $HOME/Bildung/studium/master-physik/masterarbeit/"

#alias pwgen="pwgen 20"
alias pacman='pacman-color'
alias 'sudo pacman'='sudo pacman-color'


bindkey "^[OH" beginning-of-line
bindkey "^[[3~" delete-char
bindkey "^[OF" end-of-line
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[7~" beginning-of-line
bindkey "^[[3~" delete-char
bindkey "^[[8~" end-of-line
#bindkey "


# If I am using vi keys, I want to know what mode I'm currently using.
# zle-keymap-select is executed every time KEYMAP changes.
# From http://zshwiki.org/home/examples/zlewidgets
function zle-keymap-select {
    VIMODE="${${KEYMAP/vicmd/ M:command}/(main|viins)/}"
    zle reset-prompt
}

zle -N zle-keymap-select

zstyle ':completion::complete:*' use-cache 1

export TERM='xterm-256color'

alias pcat=pygmentize

function pless() {
	    pcat "$1" | less -R
}

source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
task

