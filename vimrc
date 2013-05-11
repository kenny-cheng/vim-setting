" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set mouse=a		" Enable mouse usage (all modes)
set softtabstop=4	" Set soft tab stop
set shiftwidth=4	" Set tab shift width
set expandtab		" Expand tab to space
set autoindent		" Auto indent
set hlsearch		" Highlight search results
set ruler		" Display the status of the current line
set number		" Display line number
set showmode		" Display current mode
set cursorline          " Highlight cursor line
colorscheme desert	" Set color scheme

" Shortcuts
nnoremap <silent> <f2>  :w!<cr>
nnoremap <silent> <f3>  :wq!<cr>
nnoremap <silent> <f4>  :q!<cr>
nnoremap <silent> <f5>  :qa!<cr>
nnoremap <silent> <f6>  :TlistToggle<cr>
nnoremap <silent> <f7>  :NERDTreeToggle<cr>
inoremap <silent> <f2>  <c-o>:w!<cr>
inoremap <silent> {<cr> {<cr>}<esc>O
inoremap <silent> {     {}<Left>

" Plugins
" For pathogen.vim
" - Easy manipulation of "runtimepath", "path", "tags", etc
call pathogen#infect()

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

