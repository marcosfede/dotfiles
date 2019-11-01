source ~/.antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git # completions
antigen bundle pip # completions
antigen bundle docker # completions
antigen bundle docker-compose # completions
antigen bundle fzf

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle subnixr/minimal

# Load the theme.
antigen theme subnixr/minimal

# Tell Antigen that you're done.
antigen apply

# Theme stuff

# git status to the left
# export MNML_PROMPT=(mnml_ssh mnml_pyenv mnml_status mnml_git mnml_keymap)
# export MNML_RPROMPT=('mnml_cwd 2 0')

# default editor
export EDITOR='vim'

source ~/.aliases
source ~/.envvariables
source ~/.localenvvariables

[[ -f /etc/profile.d/vte.sh ]] && . /etc/profile.d/vte.sh
