call plug#begin ('C:/Users/HopeHole/Appdata/Local/nvim/plugged')

Plug 'dracula/vim'
Plug 'scrooloose/nerdtree'
Plug 'azabiong/vim-highlighter'
Plug 'vim-airline/vim-airline'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'https://github.com/vim-syntastic/syntastic'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/morhetz/gruvbox'
Plug 'windwp/nvim-autopairs'

call plug#end()

"plugins

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"vim-cpp-enhanced-highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_concepts_highlight = 1

"font
if has("gui_running")
    set guifont=Cascadia_Mono:h14:cANSI
endif
"sounds off
set noerrorbells
set novisualbell
set vb t_vb=
"tabulation
set expandtab
set tabstop=3
set shiftwidth=3
set autoindent
"something need
set noswapfile
set clipboard=unnamedplus
set autochdir
set noshowmode
set nu rnu
set softtabstop=3
set cursorline
set mouse=a
set syntax
set number
set ttyfast 
filetype on
set backspace=indent,eol,start
"colorscheme
autocmd vimenter * ++nested colorscheme gruvbox
let g:gruvbox_transparent_bg = 1

let g:gruvbox_contrast_dark = 'medium'
colorscheme gruvbox
"search
set ignorecase
set smartcase
set hlsearch
"language
set encoding=utf-8
set langmenu=ru_RUS
let $LANG = 'ru_RUS'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
set ffs=dos
set iminsert=0
set imsearch=0
"setts end

"cpp highlight
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
au BufWinEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/
au BufWinLeave * call clearmatches()

"let
let g:cpp_functional_highlight = 1
let g:cpp_attributes_highlight = 1
let g:cpp_member_highlight = 1
let g:cpp_simple_highlight = 1

"mappings
imap jj <Esc>
map <F6> :NERDTreeToggle <CR>
autocmd filetype cpp nnoremap <F5> :w <bar> :!g++ -g -std=c++17 -pedantic -Wall -Wextra -Werror -Wshadow -Wconversion -Wunreachable-code %:r -o %:r.exe <CR>
autocmd filetype cpp nnoremap <F9> :w <bar> :!g++ -O2 -Wall -std=c++20 % -o %:r && %:r.exe <CR> 
autocmd filetype cpp nnoremap <c-F5> :sbuffer <bar> :terminal main.exe <CR>

"airline
let g:airline#extensions#keymap#enabled = 0 "Не показывать текущий маппинг
let g:Powerline_symbols='unicode' "Поддержка unicode
let g:airline#extensions#xkblayout#enabled = 0
