
call plug#begin('~/.config/nvim/plugged')
" below are some vim plugins for demonstration purpose.
" add the plugin you want to use here.

Plug '907th/vim-auto-save',

Plug 'morhetz/gruvbox'
Plug 'lifepillar/vim-solarized8'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" node plugins 
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'eslint/eslint', { 'do': 'npm install' }  
" emmet 
Plug 'mattn/emmet-vim',  { 'for': ['html'] }
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
" writting
Plug 'fcpg/vim-waikiki'
" Plug 'vimwiki/vimwiki', { 'for':['markdown', 'wiki',]}
Plug 'junegunn/goyo.vim', { 'for':['markdown', 'wiki', 'html',]}

call plug#end()

let wiki_1 = {'path': '~/work', 'syntax': 'markdown', 'ext': '.md'}
let wiki_2 = {'path': '~/work', 'syntax': 'latex', 'ext': '.tex'}
let g:vimwiki_list =[wiki_1, wiki_2] 

let g:waikiki_roots = ['~/work']
let maplocalleader="\<F7>"
let g:waikiki_default_maps=1 

let g:airline_theme='molokai'
" colorscheme gruvbox
colorscheme solarized8_high

let g:auto_save=1 
" silent! set background = 'light'
" let g:gruvbox_contrast_light = 'hard'

" goyo config
"   if &ft == 'markdown'
"     Goyo 10
"   else
"     let bufnr = bufnr('%')
"     Goyo!  "     execute 'b '.bufnr
"   endif
" endfunction

"uncomment the following to autostart goyo for markdown 

"augroup goyo_markdown
":  autocmd!
"  autocmd BufNewFile,BufRead * call s:auto_goyo()
"augroup END

"end goyo config 

" setlocal spll
set spelllang=en
set spellsuggest=best 
set wrap linebreak nolist
set formatoptions=l
set hidden
" Make the gutter for numbers wider by default
set numberwidth=5
set display+=lastline
" set clipboard=unnamedplus
set mouse=a
set ruler " Show the line and column numbers of the cursor.
set autoread
set noshowmode " Show current mode.
set encoding=utf-8 " Set default encoding to UTF-8
set incsearch " Shows the match while typing
set hlsearch " Highlight found searches
set ignorecase " Search case insensitive...
set smartcase " ... but not when search pattern contains upper case characters
set autoindent
set tabstop=4 shiftwidth=4 expandtab

"set gdefault " use g flag by default on searches
set number relativenumber
set noswapfile

"autobrackets 

inoremap { {}<left>
inoremap [ []<left>
