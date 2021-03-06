" ============================================================================ "
" ===                               PLUGINS                                === "
" ============================================================================ "

" Set up Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundle list
Bundle 'gmarik/vundle'

" Installed plugins
Bundle 'corntrace/bufexplorer'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'ervandew/supertab'
Bundle 'shawncplus/phpcomplete.vim'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}

" Config for vim airline
set laststatus=2                  " -- Show airline even when only one split is open
let g:airline_powerline_fonts = 1 " -- Allow fancy separators

" Nerdtree Options

" Only open nerdtree if no file was specified on startup
function! StartUpNerdtree()
    if 0 == argc()
        NERDTree
    end
endfunction

autocmd VimEnter * call StartUpNerdtree()

"Tagbar Options
"latest version is only compatible with vim >= 701
if v:version > 700
    Bundle 'majutsushi/tagbar'
    " Same as nerdtree, only open if no file was specified
    function! StartUpTagbar()
        if 0 == argc()
           TagbarOpen
        end
    endfunction

    autocmd VimEnter * call StartUpTagbar()
endif

"Syntastic Options
let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']

"Vim-airline Options
set noshowmode                    " -- Hide default mode indicator
set laststatus=2                  " -- Show airline even when only one split is open
let g:airline_powerline_fonts = 1 " -- Allow fancy separators
let g:airline#extensions#syntastic#enabled = 1


" Ctrlp Options
" Ignore files we don't want to index
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn

" custom starting default search folder
let g:ctrlp_map = '<c-p>'

" SuperTab options
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
let g:SuperTabLongestHighlight = 2
let g:SuperTabClosePreviewOnPopupClose = 1

" Tagbar Options
let g:tagbar_show_visibility = 1
let g:tagbar_expand = 1

" ============================================================================ "
" ===                           EDITING OPTIONS                            === "
" ============================================================================ "

" Line Numbers
set nu

" Tabs as 4 spaces
set expandtab
set softtabstop=4
set shiftwidth=4

" Backspace works as it damn well should!
set backspace=indent,eol,start

" Search highlighting
set hlsearch

" Syntax highlighting and colors
syntax enable

" Enable matching pairs for match-it
filetype plugin on

" Clear highlighted search terms while preserving history
nmap <silent> <leader>/ :nohlsearch<CR>

set nolist

" incremental search
set incsearch

" ignore case when searching
set ignorecase

" if the search string has an upper case letter in it, the search will be case sensitive
set smartcase


" ============================================================================ "
" ===                                 MISC.                                === "
" ============================================================================ "
" After writing to any .vimrc, source that file
au! BufWritePost .vimrc so %

" Svn blame highlighted lines in visual mode (freaking awesome)
vmap gl :<C-U>!svn blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>

" Allows you to save files you opened without write permissions
cmap w!! w !sudo tee %

" remove menu bar
set guioptions-=m

" remove toolbar
:set guioptions-=T

set encoding=utf-8

" Autocomplete in menu will list all available options that match
set wildmenu

" allow for tab completion in the command line
set wildmode=list:longest

autocmd BufRead,BufNewFile *.go set filetype=go
autocmd BufRead,BufNewFile *.go set makeprg=go\ build\ %

fun! Gofix()
    let regel=line(".")
    %!$GOROOT/bin/gofmt
    call cursor(regel, 1)
endfunction

autocmd Filetype go command! Fmt call Gofix()

" Set backups
if has('persistent_undo')
  set undodir=~/.vim/tmp/undo//     " undo files
  set undofile
  set undolevels=3000
  set undoreload=10000
endif
set backupdir=~/.vim/tmp/backup// " backups
set directory=~/.vim/tmp/swap//   " swap files
set backup
set noswapfile

" Make any custom changes here. If this file doesn't exists, the
" base vimrc.custom is copied here to give you some font options
" If it already exists when you do a git pull it won't be overwritten
if filereadable(expand("~/.vim/vimrc.local"))
  source ~/.vim/vimrc.local
endif
map <C-n> :NERDTreeToggle<CR>
set paste
