# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"

# Theme
ZSH_THEME="refined"

#The max execution time of a process before its run time is shown when it exits.
PURE_CMD_MAX_EXEC_TIME=10
autoload -U promptinit; promptinit

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Change the command execution time
# stamp shown in the history command output.
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"


# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to $ZSH_CUSTOM/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=()

source "$ZSH/oh-my-zsh.sh"

# https://github.com/holman/dotfiles/blob/master/system/grc.zsh
# GRC colorizes nifty unix tools all over the place
if (( $+commands[grc] )) && (( $+commands[brew] ))
then
  source `brew --prefix`/etc/grc.bashrc
fi

# load functions from ${ZDOTDIR}/functions
for func in $(command ls -1 "${ZDOTDIR}/functions/"); do
  autoload -Uz $func
done

# General aliases
[ -f "${ZSH_CUSTOM}/.zsh_aliases" ] && source "${ZSH_CUSTOM}/.zsh_aliases"

# Aliases for switching to directories, connecting to my rasberry pi, etc...
[ -f "${ZSH_CUSTOM}/.personal_aliases" ] && source "${ZSH_CUSTOM}/.personal_aliases"
