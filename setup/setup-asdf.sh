#!/bin/bash
echo "Adding the plugins..."
asdf plugin add nodejs
asdf plugin add yarn
bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'

echo "Installing the versions defined at ~/.tool-versions..."
asdf install