# *.zsh files not recursively sourced (see .zshrc)
# And I did not want to source this file in .zshrc.  This way it loads automatically
# With our other *.zsh and gets pushed to repo
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

#Davids
#Custom things should really go in ~/.zsh.after/ or before, but I wanted to include it in the repo
. /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh 
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export EDITOR=/usr/local/bin/vim
PATH="/usr/local/bin:$PATH"

alias v='f -e vim' # quick opening files with vim

