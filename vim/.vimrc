"  ██▒   █▓ ██▓ ███▄ ▄███▓ ██▀███   ▄████▄  
" ▓██░   █▒▓██▒▓██▒▀█▀ ██▒▓██ ▒ ██▒▒██▀ ▀█  
"  ▓██  █▒░▒██▒▓██    ▓██░▓██ ░▄█ ▒▒▓█    ▄ 
"   ▒██ █░░░██░▒██    ▒██ ▒██▀▀█▄  ▒▓▓▄ ▄██▒
"    ▒▀█░  ░██░▒██▒   ░██▒░██▓ ▒██▒▒ ▓███▀ ░
"    ░ ▐░  ░▓  ░ ▒░   ░  ░░ ▒▓ ░▒▓░░ ░▒ ▒  ░
"    ░ ░░   ▒ ░░  ░      ░  ░▒ ░ ▒░  ░  ▒   
"      ░░   ▒ ░░      ░     ░░   ░ ░        
"       ░   ░         ░      ░     ░ ░      
"      ░                           ░        

" coloration syntaxique
syntax on
filetype plugin indent on
"colorscheme desert
set background=dark

" aides visuelles
set number
set ruler
set showcmd
set cursorline

" recherche incrémentale
set hlsearch
set incsearch
if has('nvim')
  set inccommand=nosplit
endif

" auto-indentation à 2 espaces
"set autoindent
"set tabstop=2
"set shiftwidth=2
"set softtabstop=2
"set expandtab

" two-space indentation except for Python and makefiles
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
" set cindent
set smartindent
set shiftround
"set autoindent
"set foldmethod=indent
augroup indents
  autocmd FileType ?akefile set noexpandtab
  autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
  autocmd FileType html,xhtml,javascript,css,c,cpp,python setlocal foldmethod=indent
augroup END

" compléter avec <Tab> en mode commande
set wildmenu
set wildmode=longest,full

" options honteuses (pour les faibles)
set clipboard=unnamedplus
"set mouse=a
nmap <silent> ./ :nohlsearch<CR>
nnoremap <F5> :CloseHiddenBuffers<CR>

" un peu de cohérence dans un monde de brutes
nmap Y y$
nmap U <C-r>

" retours arrières plus nombreux
inoremap . .<c-g>u
inoremap ? ?<c-g>u
inoremap ! !<c-g>u
inoremap , ,<c-g>u

" retours arrières permanents
set undofile
set undodir=~/.vim/undodir

" ajout de powerline
let term=$TERM
if $TERM != 'linux'
  python3 from powerline.vim import setup as powerline_setup
  python3 powerline_setup()
  python3 del powerline_setup
endif
set laststatus=2
set showtabline=2

" ajout de vim-airline
"let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1

" Highlights
hi VertSplit ctermbg=NONE guibg=NONE cterm=NONE
highlight CursorLine cterm=NONE ctermbg=DarkGrey guibg=DarkGrey
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
hi Conceal ctermfg=132 guifg=#af5f87

" Garder 5 lignes en bas lors d'un scroll
set scrolloff=5

" Charger le fichier sous le curseur
map gf :e <cfile><CR>

" 24 bits colors, baby
"set termguicolors

" netrw configuration (integrated file manager)
let g:netrw_banner = 0 " removing the banner
let g:netrw_liststyle = 3 " tree view for netrw
let g:netrw_browse_split = 4 " open file in previous window
let g:netrw_altv = 1
let g:netrw_winsize = 25 " set the width to 25% of the page
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END

" more natural split opening
set splitbelow
set splitright

" easier split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
