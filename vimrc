execute pathogen#infect()

syntax on " Turn on color syntax highlighting

" NEED TO CLARIFY
filetype plugin indent on " Enable filetype detection, enable loading the indent file for specific file types. 

" Enable solirized colorscheme
" You should start tmux with "-2" parameter so it knows the terminal supports 256 colors
set t_Co=256
"set background=dark 
set background=light 
let g:solarized_termcolors=256
colorscheme solarized " Enable solarized colorscheme

" Line numbering
set number

" Tabs and spaces
set expandtab " Insert spaces insted of tabs
set tabstop=4 " Number of spaces in edit mode that a <Tab> in the file counts for.
set shiftwidth=4 " Number of spases in normal mode inserted with < or >.
set softtabstop=4 " Number of spaces that a <Tab> counts for while performing editing operations, like inserting a <Tab> or using <BS>.

" Set smartcase in search (use case if any caps used)
set smartcase

" Indentation on
set autoindent

" Interpret numbers with leading zero (ex. 007) as decimal (not octal)
set nrformats=

" Add russian keyboard switch using C-^ and keyboard shorcuts (ex. C-w) in INSERT mode
set keymap=russian-jcukenwin

" Set initial insert and search keyboard to english instead of russian
" These parameter are switched by C-^
set iminsert=0
set imsearch=0

" Map russian keyboard to work in normal mode
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" Autoreload .vimrc after it was changed
autocmd! BufWritePost .vimrc source % 

" This makes Vim display the match for the string while you are still typing it
set incsearch

" Set search results highlighting
set hls

" Map paste togge to F2 and show visual feedback
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

