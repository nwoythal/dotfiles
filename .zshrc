export ZSH="${HOME}/.oh-my-zsh"

ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"

export UPDATE_ZSH_DAYS=6

plugins=(git fzf colored-man-pages docker)

source $ZSH/oh-my-zsh.sh
if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ] && grep -q "Arch" /etc/lsb-release; then
  exec sway
fi

[ "$(tty)" = "/dev/tty1" ] && exec sway
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source ~/.includes/base
source ~/.includes/$(uname)
