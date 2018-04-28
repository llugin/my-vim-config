" set colorscheme on start
"colorscheme dracula
syntax enable
colorscheme molokai

"let g:molokai_original = 1

" some generic sets
set number
set hidden
set incsearch
"set wildmode=list:longest
set tabstop=4
set shiftwidth=4
set softtabstop=2
set expandtab
set exrc
set secure
set syntax=on

set foldmethod=syntax
set foldlevel=20
set foldlevelstart=20

set ai
    " Execute pathogen
execute pathogen#infect()

    " Tabs to spaces for python files
au Filetype python setl et ts=4 sw=4



" Highlight column > 80
set textwidth=80
set colorcolumn=+1
highlight ColorColumn ctermbg=235 guibg=#2c2d27

" toggle NERDTree on ctrl+n
map <C-n> :NERDTreeToggle<CR>

" config form vim-cpp-enhanced-highlight
let g:cpp_member_variable_highlight=1
let g:cpp_class_decl_highlight=1
let g:cpp_class_scope_highlight=1

" clang_complete
let g:clang_library_path='/usr/lib/llvm-4.0/lib/libclang.so.1'
let g:clang_user_options='-std=c++11'
let g:clang_use_library=1
let g:clang_auto_select=1
" tab mappings
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabolny<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

" cscope, based on csope-suggestions
if has("cscope")
  set csprg=/usr/bin/cscope
  set csto=0
  set cst
  set nocsverb
" add any database in current directory
if filereadable("cscope.out")
  cs add cscope.out
"else add database pointed to by environment
elseif $CSCOPE_DB != ""
  cs add $CSCOPE_DB
endif
  set csverb
endif

"csope find abbreviations
cnoreabbrev csfc cs find c
cnoreabbrev csfd cs find d
cnoreabbrev csfe cs find e
cnoreabbrev csff cs find f
cnoreabbrev csff cs find f
cnoreabbrev csfg cs find g
cnoreabbrev csfi cs find i
cnoreabbrev csfs cs find s
cnoreabbrev csft cs find t

" search symbol under cursor
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>a :cs find a <C-R>=expand("<cword>")<CR><CR>

" Abbreviations
ab szebang #!/usr/bin/env bash
ab pyszebang #!/usr/bin/env python3

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = ' -std=c++11'
let g:syntastic_cpp_no_default_include_dirs=1

"clang-format.py
function! Formatonsave()
    let l:formatdiff = 1
    let l:lines="all"
    py3f /home/leszek/clang-format3.py
    endfunction
autocmd BufWritePre *.h,*.cc,*.cpp call Formatonsave()


"cpp enhanced highlight

