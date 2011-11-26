filetype on		          " Automatically detect file types.
filetype plugin on      " use the file type plugins
syntax on               " syntax highlighting
set nocompatible        " We don't want vi compatibility.
set viminfo^=!

set ai                  " auto indenting
set history=100         " keep 100 lines of history
set ruler               " show the cursor position
set hlsearch            " highlight the last searched term

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
\ if ! exists("g:leave_my_cursor_position_alone") |
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\ exe "normal g'\"" |
\ endif |
\ endif

" Formatting (some of these are for coding in C and C++)
set ts=2  " Tabs are 2 spaces
set bs=2  " Backspace over everything in insert mode
set shiftwidth=2  " Tabs under smart indent
set nocp incsearch
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr
set cindent
set autoindent
set smarttab
set expandtab
set laststatus=2
set nu

" colorscheme vividchalk  " Uncomment this to set a default theme
" Uncomment these lines if you have this folders with extra plugins
" set runtimepath=~/.vim,~/.vim/after,\$VIMRUNTIME
" source ~/.vim/vimrc
" helptags ~/.vim/doc

if has("autocmd")
filetype indent on
endif

au FileType ruby setl sw=2 sts=2 et
