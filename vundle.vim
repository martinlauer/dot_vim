" ----------------------------------------
" Vundle
" ----------------------------------------

set nocompatible " be iMproved
filetype off     " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" ---------------
" Plugin Bundles
" ---------------

" Navigation
Bundle 'ZoomWin'
"Bundle 'wincent/Command-T' " disabled Command-T because the c-extension won't work with vim
" This fork is required due to remapping ; to :
Bundle 'christoomey/vim-space'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'kien/ctrlp.vim'
Bundle 'sudo.vim'
" UI Additions
Bundle 'mutewinter/vim-indent-guides'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree'
Bundle 'chriskempson/base16-vim'
Bundle 'summerfruit256.vim'
Bundle 'github-theme'
" Commands
Bundle 'scrooloose/nerdcommenter'
Bundle 'surround.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'godlygeek/tabular'
Bundle 'gmarik/sudo-gui.vim'
Bundle 'keepcase.vim'
Bundle 'scratch.vim'
Bundle 'mattn/zencoding-vim'
Bundle 'mutewinter/GIFL'
Bundle 'AndrewRadev/switch.vim'
"Bundle 'bronson/vim-toggle-wrap'
" Automatic Helpers
Bundle 'IndexedSearch'
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/syntastic'
Bundle 'ervandew/supertab'
Bundle 'gregsexton/MatchTag'
Bundle 'Shougo/neocomplcache'
Bundle 'smartword'
Bundle 'MarkdownFootnotes'
" Language Additions
"   Ruby
Bundle 'vim-ruby/vim-ruby'
"   JavaScript
"Bundle 'pangloss/vim-javascript'
"Bundle 'kchmck/vim-coffee-script'
Bundle 'vim-json-bundle'
"   Other Languages
Bundle 'msanders/cocoa.vim'
Bundle 'mutewinter/taskpaper.vim'
Bundle 'mutewinter/nginx.vim'
Bundle 'timcharper/textile.vim'
Bundle 'hallison/vim-markdown'
Bundle 'groenewege/vim-less'
Bundle 'wavded/vim-stylus'
Bundle 'jngeist/vim-multimarkdown'
Bundle 'chef.vim'
" MatchIt
Bundle 'matchit.zip'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
" Libraries
Bundle 'L9'
Bundle 'tpope/vim-repeat'
Bundle 'Thesaurus'

" Handy Tools
Bundle 'aperezdc/vim-template'
Bundle 'VisIncr'
Bundle 'substitute.vim'
Bundle 'techlivezheng/vim-plugin-minibufexpl'

" Sippets
Bundle 'snipmate-snippets'
Bundle 'garbas/vim-snipmate'
 "dependency for snipmate-snippets
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
