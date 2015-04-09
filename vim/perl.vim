" syntax highlighting
setlocal bg=light

" autoindent
setlocal autoindent
setlocal smartindent

" 4 space tabs
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal expandtab

" show matching brackets
setlocal showmatch

" show line numbers
setlocal number

" check perl code with :make
setlocal makeprg=perl\ -c\ %\ $*
setlocal errorformat=%f:%l:%m
setlocal autowrite

" dont use Q for Ex mode
map Q :q

" make tab in v mode ident code
vmap <tab> >gv
vmap <s-tab> <gv

" make tab in normal mode ident code
nmap <tab> I<tab><esc>
nmap <s-tab> ^i<bs><esc>

" paste mode - this will avoid unexpected effects when you
" cut or copy some text from one window and paste it in Vim.
set pastetoggle=<F11>

" comment/uncomment blocks of code (in vmode)
vmap <leader>c :s/^/#/gi<Enter>
vmap <leader>C :s/^#//gi<Enter>

" my perl includes pod
let perl_include_pod = 1

" syntax color complex things like @{${"foo"}}
let perl_extended_vars = 1

" Tidy selected lines (or entire file) with _t:
nnoremap <silent> <leader>t :%!perltidy -q<Enter>
vnoremap <silent> <leader>T :!perltidy -q<Enter>

" Deparse obfuscated code
nnoremap <silent> <leader>d :.!perl -MO=Deparse 2>/dev/null<cr>
vnoremap <silent> <leader>D :!perl -MO=Deparse 2>/dev/null<cr>

