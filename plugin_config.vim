" ----------------------------------------
" Plugin Configuration
" ----------------------------------------

" ---------------
" space.vim
" ---------------
" Disables space mappings in select mode to fix snipMate.
"let g:space_disable_select_mode=1

" ---------------
" Neocachecompl
" ---------------
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_cursor_hold_i=1
let g:neocomplcache_cursor_hold_i_time=200
let g:neocomplcache_auto_completion_start_length=3

" Tab / Shift-Tab to cycle completions
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<S-TAB>"

" Required to make neocomplcache_cursor_hold_i_time work
" See https://github.com/Shougo/neocomplcache/issues/140
let s:update_time_save = &updatetime
autocmd InsertEnter * call s:on_insert_enter()

function! s:on_insert_enter()
  if &updatetime > g:neocomplcache_cursor_hold_i_time
    let s:update_time_save = &updatetime
    let &updatetime = g:neocomplcache_cursor_hold_i_time
  endif
endfunction

autocmd InsertLeave * call s:on_insert_leave()

function! s:on_insert_leave()
  if &updatetime < s:update_time_save
    let &updatetime = s:update_time_save
  endif
endfunction

" ---------------
" Syntastic
" ---------------
let g:syntastic_enable_signs=0
let g:syntastic_auto_loc_list=0

" Platform-specific config files
if has('win32') || has('win64')
  let g:syntastic_jsl_conf=$HOME.'/.vim/config/windows/syntastic/jsl.conf'
  let g:syntastic_disabled_filetypes=['sh'] " Disable .sh on Windows
endif

let g:syntastic_check_on_open=1
let g:syntastic_auto_jump=1

let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'

let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': ['ruby', 'php', 'json', 'javascript'], 'passive_filetypes': ['puppet'] }

" ---------------
" NERDTree
" ---------------
"nnoremap <leader>nn :NERDTreeToggle<CR>
"nnoremap <leader>nf :NERDTreeFind<CR>
"let g:NERDTreeShowBookmarks=1
"let g:NERDTreeChDirMode=2 " Change the NERDTree directory to the root node
"let g:NERDTreeMinimalUI=1
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType")
  "\&& b:NERDTreeType == "primary") | q | endif

" ---------------
" minibufexpl
" ---------------
"let g:miniBufExplVSplit = 30   " column width in chars
"let g:miniBufExplBRSplit = 0   " Put new window below
                                 " current or on the
                                 " right for vertical split

" ---------------
" Indent Guides
" ---------------
let g:indent_guides_enable_on_vim_startup=1
:nmap <Leader>ig :IndentGuidesToggle<CR>
:nmap <Leader>ie :IndentGuidesEnable<CR>
:nmap <Leader>id :IndentGuidesDisable<CR>

" ---------------
" Session
" ---------------
let g:session_autosave='yes'
let g:session_autoload='yes'
nnoremap <leader>os :OpenSession<CR>

" ---------------
" SpeedDating
" ---------------
let g:speeddating_no_mappings=1 " Remove default mappings (C-a etc.)
nmap <silent><leader>dm <Plug>SpeedDatingDown
nmap <silent><leader>dp <Plug>SpeedDatingUp
nmap <silent><leader>dn <Plug>SpeedDatingNowUTC

" ---------------
" Tabular
" ---------------
nmap <Leader>t= :Tabularize /=<CR>
vmap <Leader>t= :Tabularize /=<CR>
nmap <Leader>t: :Tabularize /:\zs<CR>
vmap <Leader>t: :Tabularize /:\zs<CR>
nmap <Leader>t, :Tabularize /,\zs<CR>
vmap <Leader>t, :Tabularize /,\zs<CR>
nmap <Leader>t> :Tabularize /=>\zs<CR>
vmap <Leader>t> :Tabularize /=>\zs<CR>
nmap <Leader>t- :Tabularize /-<CR>
vmap <Leader>t- :Tabularize /-<CR>
nmap <Leader>t" :Tabularize /"<CR>
vmap <Leader>t" :Tabularize /"<CR>

" ---------------
" Fugitive
" ---------------
nmap <Leader>gc :Gcommit -v<CR>
nmap <Leader>gw :Gwrite<CR>
nmap <Leader>gs :Gstatus<CR>
nmap <Leader>gp :Git push<CR>
 " Mnemonic, gu = Git Update
nmap <Leader>gu :Git pull<CR>
nmap <Leader>gd :Gdiff<CR>
" Exit a diff by closing the diff window
nmap <Leader>gx :wincmd h<CR>:q<CR>

" ---------------
" Zoomwin
" ---------------
" Zoom Window to Full Size
"nmap <silent> <leader>wo :ZoomWin<CR>

" ---------------
" Command T and ctrlp.vim
" ---------------

" set cache dir
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'

" use sweet extensions
let g:ctrlp_extensions = ['dir', 'bookmarkdir', 'undo', 'line', 'mixed']

" don't reuse these windows
let g:ctrlp_reuse_window = 'netrw\|help\|quickfix'

" ignoring version tracking files
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" Multiple VCS's:
"let g:ctrlp_user_command = {
  "\ 'types': {
    "\ 1: ['.git', 'cd %s && git ls-files'],
    "\ 2: ['.hg', 'hg --cwd %s locate -I .'],
    "\ },
  "\ 'fallback': 'find %s -type f'
  "\ }

" use the silver searcher
"if executable('ag')
  "unlet g:ctrlp_user_command
  "let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
"endif


" open file in new vsplit when using <c-y>
let g:ctrlp_open_new_file = 'r'

" Ensure Ctrl-P isn't bound by default
let g:ctrlp_map = '<C-p>'

let g:ctrlp_working_path_mode = 'cr'

" Ensure max height isn't too large. (for performance)
let g:ctrlp_max_height = 10
let g:CommandTMaxHeight = 10

" Set the default escape keybinding to, you guessed it, escape.
let g:CommandTCancelMap = '<esc>'

let g:ctrlp_funky_matchtype = 'path'

" Conditional Mappings
if has('unix')
  let g:ctrlp_map = '<C-t>'
else
  let g:ctrlp_map = '<M-t>'
endif

" Leader Commands
nnoremap <leader>t :CtrlP<CR>
nnoremap <leader>b :CtrlPBuffer<CR>

" ctrlp-funky
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

" Always use CtrlP for most recently used files and relative dierctory.
if has('unix')
  nnoremap <silent><C-u> :CtrlPCurFile<CR>
else
  nnoremap <silent><M-u> :CtrlPCurFile<CR>
endif

" Also map leader commands
nnoremap <leader>u :CtrlPCurFile<CR>
nnoremap <leader>m :CtrlPMRUFiles<CR>
nnoremap <leader>b :CtrlPBuffer<CR>

" ---------------
" Powerline
" ---------------
" Keep ^B from showing on Windows in Powerline
if has('win32') || has('win64')
  let g:Powerline_symbols = 'compatible'
elseif has('gui_macvim')
  let g:Powerline_symbols = 'fancy'
endif
call Pl#Theme#InsertSegment('ws_marker', 'after', 'lineinfo')

" Abbreviate All of the Mode Names
let g:Powerline_mode_n = 'N'
let g:Powerline_mode_i = 'I'
let g:Powerline_mode_R = 'R'
let g:Powerline_mode_v = 'V'
let g:Powerline_mode_V = 'VL'
let g:Powerline_mode_cv = 'VB'
let g:Powerline_mode_s = 'S'
let g:Powerline_mode_S = 'SL'
let g:Powerline_mode_cs = 'SB'

" ---------------
" jellybeans.vim colorscheme tweaks
" ---------------
" Make cssAttrs (center, block, etc.) the same color as units
"hi! link cssAttr Constant

" ---------------
" Ack.vim
" ---------------
nmap <silent> <leader>as :AckFromSearch<CR>
" Highlight word at cursor and then Ack it.
nnoremap <leader>H *<C-O>:AckFromSearch!<CR>

" ---------------
" surround.vim
" ---------------
" Use # to get a variable interpolation (inside of a string)}
" ysiw#   Wrap the token under the cursor in #{}
" Thanks to http://git.io/_XqKzQ
let g:surround_35  = "#{\r}"

" ---------------
" Gifl - Google I'm Feeling Lucky URL Grabber
" ---------------
let g:LuckyOutputFormat='markdown'
" I sometimes run vim without ruby support.
let g:GIFLSuppressRubyWarning=1

" ------------
" sideways.vim
" ------------
noremap gs :SidewaysRight<cr>
noremap gS :SidewaysLeft<cr>

" ---------------
" Markdown-Preview
" ---------------
nmap <Leader>md :MarkdownPreview<CR>
nmap <Leader>md :MarkdownPreview<CR>

" ---------------
" Rake
" ---------------
nmap <Leader>ra :Rake<CR>

" ---------------
" switch.vim
" ---------------
nnoremap - :Switch<cr>

" ---------------
" indenthtml
" ---------------
" Setup indenthtml to propertly indent html. Without this, formatting doesn't
" work on html.
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

" ---------------
" Vundle
" ---------------
nmap <Leader>pi :PluginInstall<CR>
nmap <Leader>pu :PluginInstall!<CR> " Because this also updates
nmap <Leader>pc :PluginClean<CR>

" ---------------
" Thesaurus
" ---------------
let g:thesaurus_file = "/usr/local/share/dict/mthesaur"

" ---------------
" gist.vim
" ---------------
let g:gist_clip_command = 'pbcopy'
let g:gist_open_browser_after_post = 1

" ---------------
" easytags
" ---------------
:let g:easytags_events = ['BufWritePost']
