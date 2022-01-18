#!/bin/sh

move_files_to_user_folder() {
  cp .bash_profile ~/.bash_profile
  cp .bash_aliases ~/.bash_aliases
  cp .gitconfig ~/.gitconfig
  cp .tool-version ~/.tool-version
  cp .asdfrc ~/.asdfrc
}

set_git_configurations() {
  echo "\nInput your Git username:"
  read git_config_user_name
  git config --global user.name "$git_config_user_name"

  echo "\nInput your Git e-mail:"
  read git_config_user_email
  git config --global user.email $git_config_user_email
}

start_installation() {
  clear
  echo "Hello $USER.\nDo you want to proceed with configurations to your bash? (y/n)"
  read proceed_installation

  if echo "$proceed_installation" | grep -iqE "^y"; then
    move_files_to_user_folder
    set_git_configurations
  else
    echo "All done.\n"
  fi
}

start_installation