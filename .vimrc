"
"                         ███████████████████████████
"                         ███████▀▀▀░░░░░░░▀▀▀███████
"                         ████▀░░░░░░░░░░░░░░░░░▀████
"                         ███│░░░░░░░░░░░░░░░░░░░│███
"                         ██▌│░░░░░░░░░░░░░░░░░░░│▐██
"                         ██░└┐░░░░░░░░░░░░░░░░░┌┘░██
"                         ██░░└┐░░░░░░░░░░░░░░░┌┘░░██
"                         ██░░┌┘▄▄▄▄▄░░░░░▄▄▄▄▄└┐░░██
"                         ██▌░│██████▌░░░▐██████│░▐██
"                         ███░│▐███▀▀░░▄░░▀▀███▌│░███
"                         ██▀─┘░░░░░░░▐█▌░░░░░░░└─▀██
"                         ██▄░░░▄▄▄▓░░▀█▀░░▓▄▄▄░░░▄██
"                         ████▄─┘██▌░░░░░░░▐██└─▄████
"                         █████░░▐█─┬┬┬┬┬┬┬─█▌░░█████
"                         ████▌░░░▀┬┼┼┼┼┼┼┼┬▀░░░▐████
"                         █████▄░░░└┴┴┴┴┴┴┴┘░░░▄█████
"                         ███████▄░░░░░░░░░░░▄███████
"                         ██████████▄▄▄▄▄▄▄██████████
"                         ███████████████████████████
"
"                ╔══════════════════════════════════════════╗
"                ║           ⎋ HERE BE VIMPIRES ⎋           ║
"                ╚══════════════════════════════════════════╝


"************************************
"General vim options
"************************************
au BufWritePost .vimrc so ~/.vimrc

"************************************
"gVim options
"************************************
set guifont=Ubuntu_Mono_derivative_Powerlin:h10:cANSI
set guioptions="c"
set mouse-=a

"************************************
"set up color scheme
"************************************
set t_Co=256
set background=dark
colorscheme Tomorrow-Night-Eighties

"************************************
"set up my maps
"************************************
let mapleader = ","
nnoremap ; :
noremap s <Left>
noremap h <Up>
noremap t <Right>
noremap m <Down>
onoremap s <Left>
onoremap h <Up>
onoremap t <Right>
onoremap m <Down>
noremap <S-h> <C-u> 
noremap <S-m> <C-d>
noremap <S-s> <C-Left>
noremap <S-t> <C-Right>

"resize panes
noremap <leader>h :resize +5<Enter>
noremap <leader>m :resize -5<Enter>
noremap <leader>t :vertical resize +5<Enter>
noremap <leader>s :vertical resize -5<Enter>
noremap <leader>H :resize +25<Enter>
noremap <leadertM :resize -25<Enter>
noremap <leader>T :vertical resize +25<Enter>
noremap <leader>S :vertical resize -25<Enter>

inoremap <S-Tab> <Esc>gt
noremap <S-Tab> <Esc>gt
noremap <C-t> :tabe<Space>
noremap <Tab> <C-w><C-w>

inoremap <C-s> <Left>
inoremap <C-h> <Up>
inoremap <C-t> <Right>
inoremap <C-m> <Down>

nnoremap <C-9> :tag<Enter>
nnoremap <C-0> :pop<Enter>

"open/close code folds
nnoremap <Space> za

"close all folds
nnoremap <leader><Space> zM

nnoremap <leader>n :set nu!<CR>

nnoremap <leader>b :ls<CR>:b<Space>

"get to ex mode with -E, not the visual mode
nnoremap Q <nop>

"disable q: bind for command history, use :,ctrl-f
nnoremap q: <nop>

"bbb to escape from insert mode
inoremap bbb <Esc>

",. to ->
inoremap ,. ->

",. to ->
inoremap ,/ =>

"saving in insert mode still saves
inoremap ;w <Esc>:w
inoremap ;q <Esc>:q

"increment and decrement
nnoremap + <C-a>
nnoremap - <C-x>

"clear search highlights
noremap <silent><Leader>/ :nohls<CR>

"delete whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<cr>

"maybe fix some tmux woes?
inoremap <CR> <C-j>

"dig into tags
nnoremap <C-]> <C-w><C-]>

"************************************
"set up my options
"************************************
syntax on "syntax highlighting on
set hlsearch "highlight searches
set incsearch "search before hitting enter
set number "show line nums
set hidden "hide buffers instead of forcing closed
"set expandtab "tab inserts spaces
set tabstop=2 "2 spaces for tab
set autoindent "smart autoindent
set shiftround "shift tabs to rounded tabstops
"set showmatch "show matching parentheses
set ignorecase "ignore case in search
set backspace=2 "have backspace work right

set history=1000 "lines of command history to keep
set undolevels=1000 "undo levels to keep
set visualbell "use visual cue instead of audible
set timeoutlen=500 "500ms timeout on commands before resetting to normal mode
set scrolloff=8 "keep cursor 8 lines off the bottom/top
set sidescrolloff=8 "keep curcor 8 from right side of terminal
set autoread "reread files that have changed on disk
set synmaxcol=1024 "syntax coloring on long lines sucks
set cursorline "highlight the current line

"set foldmethod=syntax "set code folding to syntax style
"set foldenable "turn on code folding

set splitright splitbelow "new splits to right and below

set nowrap "turn line wrapping off

"************************************
"set up some bits for airline to work
"************************************
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:airline_powerline_fonts=1

set laststatus=2
set encoding=utf8

set tags=~/.vim/tags/hubzero

