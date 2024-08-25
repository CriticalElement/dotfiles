export PATH="$PATH:$HOME/Documents/code/tools/flutter/bin"
export PATH="/usr/local/bin:/bin:/usr/bin:/sbin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/opt/postgresql@15/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# use oh-my-posh
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config ~/oh-my-posh/config.omp.json)"
fi

preexec() { print -Pn "\e]0;$1\a" }

if [ "$TERM" = "alacritty" ]; then
  precmd() { print -PN "\e]0;Alacritty\a" }
fi