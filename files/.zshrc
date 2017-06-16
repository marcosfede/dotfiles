# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

DEFAULT_USER=`whoami`

source ~/.aliases
source ~/.envvariables

# fzf history search
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#
# autosuggestions
# source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# syntax highlighting
# source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# pyenv
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"
