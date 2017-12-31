# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# hide user
DEFAULT_USER=`whoami`
# suggestions color
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=10'

source ~/.aliases
source ~/.envvariables

# fzf history search
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# pyenv
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

# Set python-info parameters.
zstyle ':prezto:module:python:info:virtualenv' format '%F{yellow}[%v]%f '
#
# Set git-info parameters.
zstyle ':prezto:module:git:info:branch' format '%F{blue} %b%f'
zstyle ':prezto:module:git:info:dirty' format '%%B%F{red} •%f%%b'
zstyle ':prezto:module:git:info:keys' format 'prompt' '%b%D'

# PROMPT=$'\n''$python_info[virtualenv]$ruby_info[version]${git_info:+${(e)git_info[prompt]}} %B%c%b %(?:%F{green}λ%f:%F{red}λ%f) '
PROMPT=$'$python_info[virtualenv]$ruby_info[version]${git_info:+${(e)git_info[prompt]}} %B%c%b %(?:%F{green}λ%f:%F{red}λ%f) '

# disable corrections
unsetopt correct
unsetopt correct_all
setopt nocorrectall
