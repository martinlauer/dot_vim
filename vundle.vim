" ----------------------------------------
" Vundle
" ----------------------------------------

set nocompatible " be iMproved
filetype off     " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" ---------------
" Plugin Plugins
" ---------------

" Navigation
"Plugin 'ZoomWin'
" This fork is required due to remapping ; to :
"Plugin 'christoomey/vim-space'
"Plugin 'Lokaltog/vim-easymotion'
Plugin 'kien/ctrlp.vim'
"Plugin 'wincent/Command-T'
"Plugin 'sudo.vim'
" UI Additions
"Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Lokaltog/vim-powerline'
"Plugin 'scrooloose/nerdtree'
"Plugin 'chriskempson/base16-vim'
"Plugin 'summerfruit256.vim'

" colorschemes
Plugin 'github-theme'
Plugin 'jlangston/tomorrow-night-vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'freeo/vim-kalisi'
Plugin 'tpope/vim-vividchalk'


" Commands
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
"Plugin 'tpope/vim-vinegar'
"Plugin 'godlygeek/tabular'
"Plugin 'gmarik/sudo-gui.vim'
"Plugin 'keepcase.vim'
"Plugin 'scratch.vim'
"Plugin 'mattn/emmet-vim'
"Plugin 'mutewinter/GIFL'
Plugin 'AndrewRadev/switch.vim'

" Automatic Helpers
"Plugin 'IndexedSearch'
"Plugin 'Raimondi/delimitMate'
"Plugin 'scrooloose/syntastic'
"Plugin 'ervandew/supertab'
"Plugin 'gregsexton/MatchTag'
Plugin 'Shougo/neocomplcache'
"Plugin 'smartword'
"Plugin 'MarkdownFootnotes'
"Plugin 'rake.vim'

" Language Additions
"   Ruby
Plugin 'vim-ruby/vim-ruby'
Plugin 'rubycomplete.vim'
"   JavaScript
Plugin 'vim-json-bundle'
"   Other Languages
"Plugin 'msanders/cocoa.vim'
"Plugin 'davidoc/taskpaper.vim'
"Plugin 'mutewinter/nginx.vim'
"Plugin 'hallison/vim-markdown'
"Plugin 'groenewege/vim-less'
"Plugin 'wavded/vim-stylus'
"Plugin 'chef.vim'
Plugin 'Textile-for-VIM'
" MatchIt
"Plugin 'matchit.zip'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
" Libraries
"Plugin 'L9'
Plugin 'tpope/vim-repeat'
"Plugin 'Thesaurus'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-shell'
Plugin 'mattn/webapi-vim'

" Handy Tools
"Plugin 'aperezdc/vim-template'
Plugin 'VisIncr'
Plugin 'substitute.vim'
Plugin 'Gist.vim'
Plugin 'xolox/vim-notes'
"Plugin 'md5.vim'
"Plugin 'fholgado/minibufexpl.vim'
"Plugin 'Tagma-Buffer-Manager'
Plugin 'ack.vim'

" Sippets
"Plugin 'snipmate-snippets'
"Plugin 'garbas/vim-snipmate'
 "dependency for snipmate-snippets
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'SirVer/ultisnips'

Plugin 'xolox/vim-easytags'
"Plugin 'aklt/plantuml-syntax'

" All of your Plugins must be added before the following line
call vundle#end()            " required
