#!/bin/bash

#request for user variables
echo Hello, before starting I need to know a bit more about you.
read -p 'fullname: ' varfullname
read -p 'email:' varemail
read -p 'bash editor:' vareditor
read -sp 'sudo passworkd (only used for installing node globably): ' varsudopassword

#install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#install Most common used apps
brew cask install google-chrome slack visual-studio-code spotify notion 1password spectacle iterm2
brew install vim
#install and setup node
brew install n
sudo n latest
brew install yarn

#setup git environment
git config --global pull.rebase true
git config --global core.editor "$vareditor"
git config --global user.name "$varfullname"
git config --global user.email "$varemail"
ssh-keygen -t rsa -b 4096 -C "$varemail"
