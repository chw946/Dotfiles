set ruler
set nu
set nocompatible
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set hlsearch
set t_Co=256

syntax on
colorscheme koehler

" Sets CursorLine color to a smooth background, no underline
set cursorline cursorcolumn
filetype on
filetype plugin indent on
hi link htmlLink NONE
set guifont=Menlo\ Regular:h15
map <f9> :Tlist<CR>
nnoremap <silent> <F5> :NERDTree<CR>

"Open automatically when vim starts
autocmd FileType python set makeprg=pylint\ --reports=n\ --msg-template=\"{path}:{line}:\ {msg_id}\ {symbol},\ {obj}\ {msg}\"\ %:p
autocmd FileType python set errorformat=%f:%l:\ %m
autocmd Filetype python setlocal ts=4 sts=4 sw=4

let g:pylint_onwrite = 0
call pathogen#infect()
call pathogen#helptags()
let g:syntastic_mode_map = { 'mode': 'passive' }
let Tlist_Ctags_Cmd = "/usr/local/bin/ctags"
let Tlist_WinWidth = 50

"""""""""""""""""Taglist"""""""""""""""""
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
map <F4> :TlistToggle<cr>
let Tlist_Use_Right_Window=0
let Tlist_Show_One_File=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Exit_OnlyWindow=1

""""""""""""""Disable Arrows""""""""""""""
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

""""""""""""Hive syntax highlight""""""""""""
au BufNewFile,BufRead *.hql set filetype=hive expandtab
au BufNewFile,BufRead *.q set filetype=hive expandtab

"""""""Highlight trailing whitespace"""""""
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

""""""""""Ctags""""""""""
map <C-A> :!ctags -h ".scala" -R .<CR>
set tags=tags;/
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
