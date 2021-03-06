" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Use release branch
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " One dark theme
    Plug 'joshdick/onedark.vim'
    " Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Float term
    Plug 'voldikss/vim-floaterm'
    " Wakatime
    Plug 'wakatime/vim-wakatime'
    " Colorize color strings
    Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
    " Start Screen
    Plug 'mhinz/vim-startify'

call plug#end()
