runtime scripts/SetupVSCompile.vim

set showmode            " always show current mode
set showcmd             " show typing as command
set autochdir           " set working director to file on open
"set clipboard=unnamedplus   " use system clipboard by default

set backspace=2         " enable standard backspace

set autoindent          " always autoindent
set smartindent         " adjust brackets, etc. as appropriate
set tabstop=4           " set tabs to 4 spaces
set shiftwidth=4        " number of spaces for autoindent
set expandtab           " expand tabs to spaces by default
autocmd FileType make setlocal noexpandtab      " do not expand tabs for makefiles

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
let netrw_dirhistmax = 0    " do not keep history entries

set wildmenu            " tab completion for files acts like bash
set wildmode=list:full  " show list when pressing tab
set wildignore=*.swp

set title               " change terminal's title
set cursorline          " highlight cursor line


" default font
if has("gui_running")
  set guifont=Consolas:h10:cANSI
endif

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
nnoremap <leader><space> :noh<return>
nnoremap <leader>e :Exp<return>
nnoremap <leader>m :make<return>

" fix default regex by inserting \v to use metacharacters
nnoremap / /\v
vnoremap / /\v

" yank to end of line
nnoremap Y y$

" insert blacnk lines without going into insert mode
nnoremap <return> o<ESC>
nnoremap <S-return> O<ESC>

" custom commands
command Vsc call SetupVSCompile()

" set Visual Studio compilation options
autocmd BufRead,BufNewFile */handmade/* call SetupVSCompile()
