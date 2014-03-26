#!/bin/bash

echo Install ~/.vimrc
if [ "$1" == "" ]; then
  echo ""
  echo "Usage to install .vimrc:"
  echo "   sh ./install.sh <system>"
  echo "      - where <system> can be 'mac', 'linux' or 'windows'"
  exit 1
fi
echo 'fun! MySys()
   return "$1"
endfun

source ~/dotfiles/vim/_vimrc
call pathogen#infect()
call pathogen#helptags()
' > ~/.vimrc

exit 0

ln -s ~/dotfiles/vim/pkg/ ~/.vim/pkg
ln -s ~/dotfiles/vim/colors/ ~/.vim/colors

bundle_dir="$HOME/.vim/bundle"
# clang-complete
bundles=(
    # Code Completions
    'Shougo/neocomplcache'
    'ervandew/supertab'
    'mattn/zencoding-vim'
    'msanders/snipmate.vim'
    # Fast navigation
    'tsaleh/vim-matchit'
    # Fast editing
    'tpope/vim-surround'
    'scrooloose/nerdcommenter'
    'kana/vim-smartinput'
    # IDE features
    'scrooloose/nerdtree'
    'majutsushi/tagbar'
    'tpope/vim-fugitive'
    # 'scrooloose/syntastic'
    # Syntax/Indent for language enhancement
    # web front end
    'othree/html5.vim'
    'nono/jquery.vim'
    'pangloss/vim-javascript'
    # web backend
    'tpope/vim-rails'
    # markup language
    'tpope/vim-markdown'
    # Ruby
    'tpope/vim-endwise'
    # Scheme
    'kien/rainbow_parentheses.vim'
    'wlangstroth/vim-racket'
    # Color Scheme
    'altercation/vim-colors-solarized'
    'rickharris/vim-monokai'
    'tpope/vim-vividchalk'
    'chriskempson/vim-tomorrow-theme'
    # Misc
    'mrtazz/DoxygenToolkit.vim'
    'vim-scripts/vimwiki'
    'leshill/vim-json'
    'aperezdc/vim-template'
)

# Install pathogen
if [ -f ~/.vim/autoload/pathogen.vim ]; then
    echo pathogen installed.
else
    echo Install pathogen...
    mkdir -p ~/.vim/bundle ~/.vim/autoload
    curl -Sso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
fi

echo Install vim addons...
for addon in "${bundles[@]}"; do
    git="https://github.com/$addon"
    name=$(echo $addon | sed -e 's".*/""')
    dir="${bundle_dir}/$name"
    if [ $(mkdir -p $dir) ]; then
        echo git clone $git $dir
    else
        cd $dir; git pull; cd -
    fi
done

echo "VIM CONFIGURATION Installed, Enjoy :)"

