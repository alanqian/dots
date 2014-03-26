set nocompatible               " be iMproved
filetype off                   " required!

set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

"------------------
" Code Completions
"------------------
Bundle 'Shougo/neocomplcache'
Bundle 'ervandew/supertab'
Bundle 'mattn/zencoding-vim'
Bundle 'msanders/snipmate.vim'
Bundle 'scrooloose/snipmate-snippets'
"snipmate dependencies
"Bundle 'MarcWeber/vim-addon-mw-utils'
"Bundle 'tomtom/tlib_vim'

"-----------------
" Fast navigation
"-----------------
Bundle 'tsaleh/vim-matchit'
"Bundle 'Lokaltog/vim-easymotion'

"--------------
" Fast editing
"--------------
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdcommenter'
Bundle 'kana/vim-smartinput'
"Bundle 'nathanaelkane/vim-indent-guides'
"Bundle 'godlygeek/tabular'
"Bundle 'sjl/gundo.vim'
"Bundle 'Raimondi/delimitMate'

"--------------
" IDE features
"--------------
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/syntastic'
"Bundle 'Lokaltog/vim-powerline'
"Bundle 'humiaozuzu/TabBar'
"Bundle 'kien/ctrlp.vim'
"Bundle 'mileszs/ack.vim'

"-------------
" Other Utils
"-------------

"----------------------------------------
" Syntax/Indent for language enhancement
"----------------------------------------

"Bundle '2072/PHP-Indenting-for-VIm'
"Bundle 'beyondwords/vim-jinja2'
"Bundle 'digitaltoad/vim-jade'
"Bundle 'tpope/vim-haml'
"Bundle 'kchmck/vim-coffee-script'
"Bundle 'groenewege/vim-less'
"Bundle 'wavded/vim-stylus'

" web front end
Bundle 'othree/html5.vim'
Bundle 'nono/jquery.vim'
Bundle 'pangloss/vim-javascript'
" web backend
Bundle 'tpope/vim-rails'

" markup language
Bundle 'tpope/vim-markdown'

" Ruby
Bundle 'tpope/vim-endwise'

" Scheme
Bundle 'kien/rainbow_parentheses.vim'
"Bundle 'wlangstroth/vim-racket'

"--------------
" Color Scheme
"--------------
Bundle 'altercation/vim-colors-solarized'
Bundle 'rickharris/vim-monokai'
Bundle 'tpope/vim-vividchalk'
Bundle 'chriskempson/vim-tomorrow-theme'

"./template/code_template.vim

"./colors/peaksea.vim
"./colors/ir_black.vim
"./colors/mayansmoke.vim
"./colors/pyte.vim
" mru.vim
" clewn.vim
"./macros/clewn_mappings.vim
" format.vim

Bundle 'mrtazz/DoxygenToolkit.vim'
Bundle 'vimwiki'
Bundle 'aperezdc/vim-template'
Bundle 'leshill/vim-json'

" taglist.vim
" ctag,cscope
" google.vim
" omnicppcomplete
"
" json.vim
"
" bridge_utf-8.vim
"
" comdg.vim
" some snippets

