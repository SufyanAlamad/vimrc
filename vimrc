set hlsearch
set incsearch
set cindent

filetype plugin indent on

"set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" disable vi compatibility (emulation of old bugs)
set nocompatible
" use indentation of previous line
set autoindent
" use intelligent indentation for C
set smartindent
" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set noexpandtab        " expand tabs to spaces
" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=120
" turn syntax highlighting on
" let g:solarized_termcolors=256
syntax enable
" highlight Normal ctermfg=black ctermbg=lightgrey
" colorscheme wombat256
" turn line numbers on
set number
" highlight matching braces
set showmatch

set visualbell
set t_vb=

call plug#begin()
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'vim-airline/vim-airline'
Plug 'vimwiki/vimwiki'
Plug 'preservim/nerdtree'
Plug 'dracula/vim',{'as':'dracula'}
Plug 'tpope/vim-fugitive'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
call plug#end()

colorscheme dracula

let g:fzf_layout = { 'up': '~50%' }
nnoremap <C-f> :Files<Cr>
map <space> :Rg<CR>

nnoremap <C-n> :NERDTreeFind<CR>

" Enter 'reader' mode.
nnoremap Q :call ToggleReader()<CR>
let g:readerMode=0
function! ToggleReader()
	if g:readerMode
		execute 'Goyo!'
		execute 'Limelight!'
	else
		execute 'Goyo'
		execute 'Limelight'
	end
	let g:readerMode = !g:readerMode
endfunction
