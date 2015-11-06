#!/bin/bash

function CheckAndCreateFiles {  
  CONFIG_FILE="$1"
  echo "Processing $CONFIG_FILE..."

  if [ -f ~/$CONFIG_FILE ] 
    then
      # If actual file was found, copy it to dotfiles dir and back it up 
      cp ~/$CONFIG_FILE ~/dotfiles/.backup$CONFIG_FILE
      
      # If symbolic link is found, remove the link
      if [ -h ~/$CONFIG_FILE ] 
        then 
          if unlink ~/$CONFIG_FILE ; then echo "Successfully unlinked $CONFIG_FILE"; fi
      fi

      # Remove config file from home dir
      rm ~/$CONFIG_FILE
  fi

  # Create symlink between home dir config file and dotfiles config file
  if ln -sf ~/dotfiles/$CONFIG_FILE ~/$CONFIG_FILE  
    then echo "Created link: $CONFIG_FILE" source $CONFIG_FILE 
    else echo "Link creation failed: $CONFIG_FILE" ; 
  fi 

  echo "-----------------"
}

function InstallVundle {
  
  echo 'Checking Vundle installation...'
  if [ -d ~/.vim/bundle/Vundle.vim ] 
    then
      echo 'Vundle is already installed on system' 
      echo '';
      MoveColors
      echo `vim +PluginInstall +qall`
      return 1;
    else 

      if [ `which git` ] 
        then
          echo 'Found git.' 
          echo `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
          echo "-----------------"
          echo "Successfully cloned vundle repo" 
          MoveColors          
          echo `vim +PluginInstall +qall`
          echo 'Successfully installed plugins' 
          return 0;
        else 
          echo 'Could not find git. Please install git' 
          exit 1;
      fi     
    
  fi
}

function MoveColors {
  echo 'Moving colors directory...'
  cp -R ~/dotfiles/colors ~/.vim/colors
  if [ -d ~/.vim/colors ] ; then echo 'Copied colors successfully' ; else echo 'Failed on copying colors' ; fi
  echo "-----------------"
}

FILES=('.bash_profile' '.vimrc' '.gitconfig' '.tmux.conf')

echo " "

InstallVundle

for i in "${FILES[@]}" 
  do
    CheckAndCreateFiles $i
done

