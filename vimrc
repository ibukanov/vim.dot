set wildmenu
set colorcolumn=80

" Show status line
set laststatus=2

" Add a relative path to the status
set statusline+=%4l:%02c:%f

" Keep the cursor at the center.
" set scrolloff=999

" Allow to switch buffers without saving
set hidden

" Search for files in the directory of the current file and in all files under
" the current diectory.
set path=.,,**


set backupdir=~/.local/vim/backup//
set directory=~/.local/vim/swap//
set undodir=~/.local/vim/undo//

:cabbrev h vert h
:cabbrev f find

map <space> <C-F>
map , <C-B>

" goto buffer
nnoremap gb :ls<CR>:b<Space>

set autoindent

autocmd BufNewFile
  \ ~/p/lms/*.php set expandtab tabstop=4 shiftwidth=4 autoindent

:autocmd BufReadPost * :DetectIndent
let g:detectindent_preferred_indent = 4

" Strip trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

