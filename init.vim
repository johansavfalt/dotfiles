set nocompatible
filetype plugin on
let mapleader=','

" Vundle setup
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'mhinz/vim-signify'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'vim-airline/vim-airline'
"Plugin 'artur-shaik/vim-javacomplete2'
Plugin 'morhetz/gruvbox'
Plugin 'junegunn/fzf'
Plugin 'jremmen/vim-ripgrep'
Plugin 'scrooloose/nerdtree'
Plugin 'w0rp/ale'
Plugin 'martinda/Jenkinsfile-vim-syntax.git'
Plugin 'SirVer/ultisnips'
Plugin 'benmills/vimux'
Plugin 'wincent/terminus'
Plugin 'mileszs/ack.vim'
Plugin 'haya14busa/incsearch.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jiangmiao/auto-pairs'
Plugin 'janko/vim-test'
Bundle 'ycm-core/YouCompleteMe'

" End of vundle
call vundle#end()


filetype plugin indent on

" Remap splits
nnoremap 'v <C-w>v
nnoremap 'h <C-w>s

" Jump between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Remap escape
inoremap kj <Esc>
cnoremap kj <Esc>
" Enable cold folding
set foldmethod=indent
set foldlevel=99


" Enbale default configs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set encoding=utf-8
set textwidth=119
set expandtab
set autoindent
set fileformat=unix
set relativenumber
colorscheme gruvbox
set background=dark
syntax on
set clipboard=unnamed
set cursorline
" Allow switching from unsaved buffer
set hidden

" Add keybindings for fzf and rg
nnoremap <C-p> :FZF<CR>
nnoremap <C-f> :Rg

" NerdTree
map <C-n> :NERDTreeToggle<CR>

" incsearch
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" Keymapping for replacing word under cursor
:nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>

" Reselct visual selection after indenting
:vnoremap < <gv
:vnoremap > >gv

"autocmd FileType java setlocal omnifunc=javacomplete#Complete

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()


let g:UltiSnipsExpandTrigger="`"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Prompt for a command to run
 map <Leader>vp :VimuxPromptCommand<CR>
 " Run last command executed by VimuxRunCommand
 map <Leader>v1 :VimuxRunLastCommand<CR>
