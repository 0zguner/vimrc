set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'morhetz/gruvbox'
Plugin 'sirver/ultisnips'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'valloric/youcompleteme'
Plugin 'airblade/vim-gitgutter'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ervandew/supertab'
Plugin 'mzgnr/react-snippets-vim'

call vundle#end()
filetype plugin indent on

let g:jsx_ext_required = 0
syntax on

" UI
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

" let time = strftime("%H")
" if 6 <= time && time < 18
"  set background=dark
"else
"  set background=light
"endif

set background=dark
set guioptions-=L
set guioptions-=r
set macligatures
set guifont=Fira\ Code\ Retina:h14


" set guifont=Source\ Code\ Pro\ for\ Powerline:h14
set laststatus=2
set number
set columns=180

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'

" Nerdetree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" make sure sytastic runs local eslint
let g:syntastic_javascript_checkers = ['eslint']"
let s:eslint_path = system('PATH=$(npm bin):$PATH && which eslint')
let b:syntastic_javascript_eslint_exec = substitute(s:eslint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')

let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

