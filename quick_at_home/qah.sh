#!/bin/bash

# Only use on Debian family distributions
# Doesn't install much by design and these configs are
# very small as well.
# Often run this on utility containers.

TO_INSTALL="git vim curl wget procps tmux"
REPO="https://raw.githubusercontent.com/dkvz/dot/main"

if ! command -v apt &>/dev/null; then
  echo "Could not find apt, is this a Debian family distribution?"
  exit 1
fi

if [ -z "$HOME" ]; then
  echo "The HOME variable doesn't exist or is empty, cannot continue"
  exit 1
fi

if ! apt update; then
  echo "apt update failed, aborting."
  exit 1
fi

# shellcheck disable=SC2086
if ! apt install -y $TO_INSTALL; then
  echo "Installing packages failed, aborting."
  exit 1
fi

apt clean

# Back up the dotfiles we are about to overwrite

timestamp=$(date +%Y%m%d%H%M%S)

for file in "$HOME/.bashrc" "$HOME/.vimrc" "$HOME/.tmux.conf"; do
  if [ -f "$file" ]; then
    if cp -vp "$file" "$file.$timestamp.bkp"; then
      echo "Backed up $file to $file.$timestamp.bkp"
    else
      echo "Could not back up $file"
    fi
  fi
done

set -eux

# Download and copy .tmux, .vimrc and .bashrc
curl -flo "$HOME/.bashrc" "$REPO/quick_at_home/.bashrc"
curl -flo "$HOME/.tmux.conf" "$REPO/.tmux.conf"
curl -flo "$HOME/.vimrc" "$REPO/.vimrc"

# Sleep a bit for effect
sleep 2

# Source .bashrc
source "$HOME/.bashrc"

echo "Done."
