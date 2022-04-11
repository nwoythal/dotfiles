export ZSH="${HOME}/.oh-my-zsh"

ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"
HIST_STAMPS="dd.mm.yyy"

export UPDATE_ZSH_DAYS=6

plugins=(git fzf colored-man-pages docker)

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source ~/.includes/base
source ~/.includes/$(uname)
