source ~/.antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git # completions
antigen bundle pip # completions
antigen bundle command-not-found # suggested instructions
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

export EDITOR='nvim'

source ~/.aliases
source ~/.envvariables
source ~/.localenvvariables

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
