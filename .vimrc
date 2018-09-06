set noswapfile
execute pathogen#infect()
let g:mapleader=","
syntax on
filetype plugin indent on
"let g:rehash256 = 1
hi normal ctermfg=none ctermbg=none
colorscheme molokai 
set number

"Tab settings - change back to 4?
set tabstop=2 shiftwidth=2 expandtab 

" Enable mouse
set mouse+=a
if &term =~ '^screen'
  set ttymouse=xterm2
endif

" Splits settings
noremap <C-J> <C-W><C-J>
noremap <C-K> <C-W><C-K>
noremap <C-L> <C-W><C-L>
noremap <C-H> <C-W><C-H>
set splitbelow
set splitright

" Rainbow highlighting
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces

" Wrapping settings
set whichwrap+=<,>,[,],h,l  " Arrows, h, and l wrap to next and previous lines
set backspace=indent,eol,start  " Backspace wraps

" Save folds between sessions
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 

if has('persistent_undo')      "check if your vim version supports it
  set undofile                 "turn on the feature  
  set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
  endif  

set background=dark
set ruler
