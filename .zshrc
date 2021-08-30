# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.zsh/.p10k.zsh ]] || source ~/.zsh/.p10k.zsh

### Everything from this is Custom - User sarvesh

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Commands
export PATH="$HOME/.local/bin:$PATH"
export FZF_DEFAULT_COMMAND="ag --ignore '.git' --ignore '*.swp' --hidden -g ''"
setopt appendhistory
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
ZSH_AUTOSUGGEST_HISTORY_IGNORE="(youtube-dl *|curl *| wget *|rm *|cd *|chmod *|apt *|pip *|pip3 *| *|)"

# Load; should be last.
source ~/.zsh/.zsh_aliases
source ~/.zsh/.zsh_keybindings
source /usr/share/autojump/autojump.sh
source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme > /dev/null
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
