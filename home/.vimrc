set ru
set tabstop=8
set shiftwidth=2
set softtabstop=2
set textwidth=77
set wrapmargin=77
set expandtab
set ignorecase
execute pathogen#infect()
filetype plugin indent on
syntax on
runtime! plugin/sensible.vim
set viminfo+=n~/.vim/viminfo
set directory=~/.vim/swaps
set backupdir=~/.vim/backups
set undodir=~/.vim/undos
" set background=light
" colorscheme solarized
autocmd filetype crontab setlocal nobackup nowritebackup
