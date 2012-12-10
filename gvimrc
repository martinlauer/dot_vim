" Unbind these keys for different bindings in vimrc
if has('gui_macvim')
  " D-t
  macmenu &File.New\ Tab key=<nop>
  " D-p
  macmenu &File.Print key=<nop>

  " D-p
  macmenu Edit.Find.Find\.\.\. key=<nop>

  " D-b
  macmenu &Tools.Make key=<nop>
  " D-l
  macmenu &Tools.List\ Errors key=<nop>
endif

" local gui settings
"set lines=60 columns=86
" highlight current line
set cursorline
" font for the gui
set guifont=Droid\ Sans\ Mono\ Dotted\ for\ Powerline:h13
