" Reload vimrc on save
autocmd BufWritePost .vimrc source %

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Highlight search results
set hlsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

"colorscheme desert
set background=dark

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>tc :tabclose<cr>

""""""""""""""""""""""""""""""
" => Status line
"""""""""""""""""""""""""""""""

hi User1 ctermbg=black    ctermfg=yellow
hi User2 ctermbg=black   ctermfg=LightCyan
hi User3 ctermbg=black   ctermfg=blue
hi User4 ctermbg=black   ctermfg=red
hi User5 ctermbg=black   ctermfg=red
hi User6 ctermbg=black   ctermfg=red

" Always show the status line
set laststatus=2

" Format the status line
set statusline=   " clear the statusline for when vimrc is reloaded
set statusline+=%1*\%t\                          " file name
set statusline+=%2*%h%m%r%w%y                     " flags
set statusline+=%=                           " right align
set statusline+=%3*%{synIDattr(synID(line('.'),col('.'),1),'name')}\  " highlight
set statusline+=%4*%20(line:%l/%L%)   "line 
set statusline+=%5*%20(col:%6(%c%V%)%)  "column
set statusline+=%6*%20(%<%p%%%)           " offset


" Always show the tabline
set showtabline=2

" Format the tab line
set tabline=\ %F\ %w\ \ CWD:\ %r%{CurDir()}%h

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! CurDir()
	let curdir = substitute(getcwd(), '/home/daw77/', "~/", "g")
	let curdir = substitute(curdir, '/home/davidwerner/', "~/", "g")
	return curdir
endfunction

set tabstop=3
set textwidth=100
set shiftwidth=4
set tabstop=4
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk
