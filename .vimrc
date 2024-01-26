" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" define the plugins
call plug#begin()

Plug 'JuliaEditorSupport/julia-vim'

call plug#end()

"Enable line numbering
set nu

"tabs and spaces
set tabstop=2
set shiftwidth=2
set expandtab

"search
set incsearch
set hlsearch

"ruler
set ruler
