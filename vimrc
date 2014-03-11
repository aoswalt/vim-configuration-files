" Auto Commands
augroup Cpp11Syntax
    au!
    au BufNewFile,BufRead *.cpp set syntax=cpp11
    au BufNewFile,BufRead *.cc set syntax=cpp11
augroup end

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

" show line numbers
set nu

" preferred colors (MinGW specific?)
colorscheme desert
highlight LineNr ctermfg=6

" highlight found when searching
set hlsearch

" status line
set laststatus=2    " always show status line
highlight StatusLine cterm=NONE ctermbg=black ctermfg=green
set statusline=
set statusline+=%f  " filename
set statusline+=%=  " move to right
set statusline+=%l  " current line preceeded by 8 spaces
set statusline+=/   " separator
set statusline+=%L  " total lines preceded by 1 space
