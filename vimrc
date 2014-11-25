set showmode            " always show current mode
set showcmd             " show typing as command

set backspace=2         " enable standard backspace

set autoindent          " always autoindent
set tabstop=4           " set tabs to 4 spaces
set shiftwidth=4        " number of spaces for autoindent
set expandtab           " expand tabs to spaces by default

set nu                  " show line numbers
"set relativenumber      " line number from current
syntax enable           " syntax highlighting
set showmatch           " show matching parenthesis
set scrolloff=4         " keep more lines on screen when scrolling

" don't tag {} as error inside ()
let c_no_curly_error=1

set ignorecase          " case insensitive search
set smartcase           " ignore case if search pattern lowercase
set hlsearch            " highlight found when searching
set incsearch           " show matches while typing
set gdefault            " global substitutions by default


set history=100         " remember mroe commands and search history
set undolevels=100      " increased undos
set nobackup            " do not keep backup files
set noswapfile          " do not write to swap files

set wildmenu            " tab completion for files acts like bash
set wildmode=list:full  " show list when pressing tab
set wildignore=*.swp

set title               " change terminal's title
set cursorline          " highlight cursor line


" preferred colors
set t_Co=256
set background=dark
colorscheme jellybeans
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
"highlight LineNr ctermfg=6
highlight Statusline cterm=NONE ctermbg=0 ctermfg=15

" status line
set laststatus=2    " always show status line
set statusline=
set statusline+=%f  " filename
set statusline+=%=  " move to right
set statusline+=%l  " current line preceeded by 8 spaces
set statusline+=/   " separator
set statusline+=%L  " total lines preceded by 1 space

" ** key mappings **
let mapleader = ","

" backslash to clear search highlighting
nnoremap <leader><space> :noh<return><esc>

" tab controls first, last, prev, next
"nmap <C-t><up> :tabr<cr> 
"nmap <C-t><down> :tabl<cr>
"nmap <C-t><left> :tabp<cr>
"nmap <C-t><right> :tabn<cr>
"nnoremap <tab> :tabn<cr>
"nnoremap <C-i> :tabn<cr>
"nmap <C-tab> :tabn<cr>
"nmap <C-S-tab> :tabp<cr>

" fix default regex by inserting \v
nnoremap / /\v
vnoremap / /\v

" yank to end of line
nnoremap Y y$

" tab to matching bracket pairs
nnoremap <tab> %
vnoremap <tab> %
