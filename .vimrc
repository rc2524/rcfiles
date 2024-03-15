"Break backwards compatibility with vi.
set nocompatible

"indentation settings
set shiftwidth=2 tabstop=2 noexpandtab
set autoindent copyindent preserveindent
"Show tabs
set list
set listchars=tab:\|\ 

"case insensative search
set ignorecase
set smartcase

"show line/column number in status bar
set ruler

"Indent line wraps (requires vim 8.0)
set breakindent

"turn on mouse
set mouse=a
set ttymouse=sgr

"Template shortcut function: LT <template name> (ex ':LT main.py')
:command! -nargs=1 LT :r ~/.vim/templates/<args>

"autocomplete: remap ctrl+space(really ctrl+null since ctrl+space isn't valid or something) to ctrl+p which is autocomplete
inoremap <c-@> <c-p>

"syntax highlighting settings
syntax on
set background=dark

"Persistent macro for push diff and move to next
let @q = 'dp]c'

"Ctrl Backspace in insert mode
set backspace=indent,eol,start
noremap! <C-BS> <C-w>
noremap! <C-h> <C-w>
map! <C-BS> <C-W>
"Ctrl L/R in insert mode (<C-o> makes the next thing an escape
map! <esc>[1;5D <C-Left>
map! <esc>[1;5C <C-Right>
map <esc>[1;5D <C-Left>
map <esc>[1;5C <C-Right>

"plugins
"call plug#begin()
"Plug 'zivyangll/git-blame.vim'
"call plug#end()

"git blame binding
"nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>
