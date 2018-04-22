execute pathogen#infect()

"nerdtree toggle
map <C-n> :NERDTreeToggle<CR>

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set ai
set number
set hidden
set exrc
set secure

set foldmethod=syntax
set foldlevel=20
set foldlevelstart=20

" clang_complete
let g:clang_library_path='/usr/lib/llvm-4.0/lib/libclang.so.1'
let g:clang_user_options = '-std=c++11' 
let g:clang_use_library=1

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
		"set csprg=/usr/local/bin/cscope
		set csto=0
		"set cst
		set nocsverb
		" add any database in current directory
		if filereadable("cscope.out")
		    cs add cscope.out
		" else add database pointed to by environment
		elseif $CSCOPE_DB != ""
		    cs add $CSCOPE_DB
		endif
		set csverb
	endif

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

