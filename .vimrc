" Automatic installation vim-plug installation
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/	" avoid extraneous whitespace. 

set autoindent					" Copy indent from previous line
set backspace=indent,eol,start	" make backspace work like most other apps


set clipboard=unnamed
set cursorline					" show a visual line under the cursor's current line


set encoding=utf-8
set ignorecase					" Ignore case in search patterns
let python_highlight_all = 1


set mouse=a 					" Allow use of mouse cursor
set noeol						" Do not add eol at the end of file.

set number 						" Set line number
set relativenumber 
set shiftwidth=4				" number of spaces to use for each step of indent
set showmatch					" show the matching part of the pair for [] {} and ()



set smartindent					" Enable smart indent. it add additional indents whe necessary

set smarttab
set tabstop=4								" Number of spaces that a Tab in the file counts for

syntax on

call plug#begin('~/.vim/plugins_by_vimplug')

Plug 'fatih/vim-go', { 'for' : ['go', 'markdown'] } "Loads only when editing golang files
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'junegunn/vim-easy-align'				" Align text
Plug 'kien/ctrlp.vim'						" Fuzzy search
Plug 'majutsushi/tagbar'
Plug 'mattn/emmet-vim'						" Emmet effects
"Plug 'mbbill/undotree'
Plug 'Raimondi/delimitMat'					" insert mode auto-completion for quotes, parens, brackets, etce
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/syntastic'
Plug 'sjl/gundo.vim'						"undo tree and diff
Plug 'terryma/vim-multiple-cursors'
Plug 'tomtom/tcomment_vim'					" provides mappings to easily delete, change and add such surroundings in pairs.
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'				"status bar
Plug 'vim-jp/vim-go-extra'
"Plug 'Valloric/YouCompleteMe'
Plug 'Yggdroot/indentLine'

call plug#end()


autocmd FileType go autocmd BufWritePre <buffer> Fmt 	"gofmt Go source files when they are saved.

