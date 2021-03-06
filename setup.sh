#!/bin/bash
#
# Run all dotfiles installers.


set -e
if [[ ! "$PWD" == "${HOME}/dotfiles" ]]; then
  cd "${HOME}/dotfiles"
fi

# call these in a defined order
bash -c ./zsh/install.sh
. ~/.zshenv
bash -c ./homebrew/install.sh
bash -c ./git/install.sh
bash -c ./python3/install.sh
bash -c ./atom/install.sh
bash -c ./firefox_addons/install.sh

# will prompt user asking if they want to reset mac defaults
${DOTDIR}/bin/set_mac_defaults
