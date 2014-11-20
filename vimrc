" show typing as command
set showcmd

" enable standard backspace
set backspace=2

" autoindent & tabs to 4 spaces
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab

" syntax highlighting
syntax enable

" don't tag {} as error inside ()
let c_no_curly_error=1

" show line numbers
set nu

" preferred colors (MinGW specific?)
set t_Co=256
colorscheme jellybeans
highlight LineNr ctermfg=6

" highlight found when searching
set hlsearch

" esc to clear search highlighting
nnoremap <esc> :noh<return><esc>

" status line
set laststatus=2    " always show status line
highlight StatusLine cterm=NONE ctermbg=black ctermfg=green
set statusline=
set statusline+=%f  " filename
set statusline+=%=  " move to right
set statusline+=%l  " current line preceeded by 8 spaces
set statusline+=/   " separator
set statusline+=%L  " total lines preceded by 1 space
