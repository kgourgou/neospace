"===================================="
"
"   CONTENTS
"===================================="

"   PLUGINS
"       - vim-sensible
"       - vim-airline
"       - fzf
"       - vim-ripgrep
"       - quickfix-reflector
"       - tcomment_vim
"       - deoplete.nvim
"       - deoplete-jedi
"       - YankRing.vim
"       - ale
"       - vim-sneak
"       - vim-gtfo
"       - vim-rooter
"       - ultisnips
"       - vim-snippets
"       - vimagit
"       - vim-gitgutter
"       - vim-trailing-whitespace
"       - jedi-vim
"       - vim-bookmarks
"       - neospace-theme
"       - SyntaxAttr.vim
"       - vim-autoread
"       - vim-autoformat
"       - vim-eunuch
"       - vim-dirvish
"       - vim-move
"       - vim-prettier
"       - webapi-vim
"       - emmet
"       - vim-surround
"       - vim-autopairs
"   APPEARENCE
"       - NeoVim Theme
"       - Enable Syntax Highlighting
"       - Show Line Numbers
"       - Don't show mode
"   GENERAL SETTINGS
"       - Leader Key
"       - Switching Buffers
"       - Tabs
"       - Buffer Search
"       - Visual Selections
"       - Case insensitive searching
"       - Terminal Mouse Support
"       - Clipboard Support
"       - Syntax Highlighting
"       - Copy File Paths to Clipboard
"   MAPPINGS
"       - Move lines up/down
"       - Adding lines
"       - Clear search highlighting
"       - Project File Search
"       - Fuzzy search across project
"       - Fuzzy search recently for opened files
"       - Navigate the file tree
"       - Navigate windows with <SPACE>Number
"       - Navigate up the file tree when <space>ff is open
"       - Open this config
"       - Source config file
"       - Open prev ripgrep search
"       - Close Current Buffer
"       - Maximize Window
"       - Save File
"       - Find word under cursor
"       - Toggle between buffers
"   PLUGIN CONFIG
"       - SyntaxAttr
"       - Deoplete
"       - Rooter
"       - GitGutter
"       - Airline
"       - Ale
"       - Sneak
"       - UtilSnippets
"       - Ripgrep
"   LANGUAGE SPECIFIC
"       - Python
"       - Javascript
"       - JSX
"   BACKUP





"===================================="
"   PLUGINS
"===================================="

call plug#begin()


Plug 'danilo-augusto/vim-afterglow'

" General default setting improvements for VIM
Plug 'tpope/vim-sensible'

" Fancy status bar
Plug 'vim-airline/vim-airline'

" Fuzzy searching for file names, and within files
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Use ripgrep to find string in project files, and put results in the quickfix window
Plug 'jremmen/vim-ripgrep'

" Use this to replace across files by editing in the quickfix window after a ripgrep search
Plug 'stefandtw/quickfix-reflector.vim'

" Helps toggle code comments in various languages
Plug 'tomtom/tcomment_vim'

" Auto-completion for Neovim
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Python auto-complete support
Plug 'zchee/deoplete-jedi'

" Helps cycle through history of text previously copied
Plug 'vim-scripts/YankRing.vim'

" Asynchronous linting for different languages
Plug 'w0rp/ale'

" Quickly navigate to any word on the screen (use 's' in normal mode, followed by the first letter
" of the word, to search forward, and 'S' to search backwards)
Plug 'justinmk/vim-sneak'

" Open a shell at the location of the current file by typing: <leader>got
Plug 'justinmk/vim-gtfo'

" Sets the project root so search utilities search the project for string matches
Plug 'airblade/vim-rooter'

" Snippets
Plug 'honza/vim-snippets'

Plug 'arcticicestudio/nord-vim'

" Git support
Plug 'jreybert/vimagit'
Plug 'airblade/vim-gitgutter'

" Highlights trailing whitespace. Fix it with :FixWhitespace
Plug 'bronson/vim-trailing-whitespace'

" Python support for VIM
Plug 'davidhalter/jedi-vim'

" Cross-file bookmarks
Plug 'MattesGroeger/vim-bookmarks'

" A theme based on Spacemacs
Plug 'lukelarsen/neospace-theme'

Plug 'NLKNguyen/papercolor-theme'

Plug 'Rigellute/shades-of-purple.vim'


" Plug 'terryma/vim-multiple-cursors'


" Show needed names for creating color scheme
Plug 'vim-scripts/SyntaxAttr.vim'

" Auto reloads files when they change, even when Neovim is run in the terminal
Plug 'djoshea/vim-autoread'

" Auto-format files
Plug 'Chiel92/vim-autoformat'

" Move lines up and down
Plug 'matze/vim-move'

" Edit surrounding things ("<
Plug 'tpope/vim-surround'

" Auto Pairs for finishing )}]
Plug 'jiangmiao/auto-pairs'

" golden-ratio
Plug 'roman/golden-ratio'

Plug 'mhinz/vim-startify'

Plug 'psf/black', { 'branch': 'stable' }


Plug 'sonph/onehalf', { 'rtp': 'vim' }

Plug 'itchyny/calendar.vim'

" tabular plugin is used to format tables
Plug 'godlygeek/tabular'
" JSON front matter highlight plugin
Plug 'elzr/vim-json'
Plug 'plasticboy/vim-markdown'

call plug#end()



"===================================="
"   APPEARENCE
"===================================="

" NeoVim Theme
if (has("termguicolors"))
  set termguicolors
endif
set background=light
colorscheme shades_of_purple
" colorscheme papercolor

" Enable syntax highlighting
syntax enable

" Show line numbers
:set number

" Don't show mode because we already have it with Airline
set noshowmode





"===================================="
"   GENERAL SETTINGS
"===================================="

" Set the leader key to <SPACE> (inspired by Spacemacs)
:let mapleader = " "

" Allow switching buffers without saving them
set hidden

" Tabs as 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Buffer search settings
set inccommand=split
set incsearch

" Show information about visual selections, and more
set showcmd

" Make searches case insensitive by default
set ignorecase
set smartcase

" Terminal mouse support
:set mouse=a

" Clipboard support
set clipboard+=unnamedplus

" Copy file path to clipboard: https://stackoverflow.com/a/954336
:nmap cp :let @+ = expand("%:p")



"===================================="
"   MAPPINGS
"===================================="

" Move Lines up and down with Alt+j or k
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv

" Adding Lines
nnoremap <leader>o O<Esc>
nnoremap <CR> o<Esc>

" Clear search highlighting with <Esc> key
nnoremap <leader><Esc> :noh<CR><CR>

" Search for files in your project using <SPACE> pf
:nnoremap <leader>pf :GFiles<CR>

" Fuzzy search with <SPACE> /
:nnoremap <leader>/ :Rg<CR>

" Show buffers with <leader> bb
:nnoremap <leader>bb :ls<CR>:b

" Go to previously edited buffer witb <leader> bj
:nnoremap <leader>bj <C-^>

" Delete active buffer with <space>bd
:nnoremap <leader>bd :b#<bar>bd#<CR>

" Fuzzy search recent history of files with <SPACE> hh
:nnoremap <leader>hh :History<CR>

" Navigate the file tree with <SPACE> ff
:nnoremap <leader>ff :Explore<CR>

" Navigate windows with <SPACE>Number
:nnoremap <leader>sp :vsp<CR>
" Navigate windows with <SPACE>Number
:nnoremap <leader>1 1<C-w><C-w>
:nnoremap <leader>2 2<C-w><C-w>
:nnoremap <leader>3 3<C-w><C-w>
:nnoremap <leader>4 4<C-w><C-w>

" Navigate up the file tree when <space>ff is open
:nmap <C-h> -

" Open this VIM config file
" (http://learnvimscriptthehardway.stevelosh.com/chapters/07.html)
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" Source (apply the changes in) this VIM config file
" (http://learnvimscriptthehardway.stevelosh.com/chapters/07.html)
:nnoremap <leader>sv :source $MYVIMRC<cr>

" Open the previous Ripgrep search with <SPACE> sl
" This opens the previous quickfix window
:nnoremap <leader>sl :colder<cr> :wincmd j<cr>

" Maximize the window (size) with <SPACE> wm
:nnoremap <leader>wm :wincmd o<cr>

" Save files with: <SPACE> fs
:nnoremap <leader>fs :w<CR>

" Use Ripgrep to find the word under the cursor, when pressing * while on the
" word
:nnoremap <leader>* :Rg<CR>

" Toggle between two buffers with <TAB>
:nnoremap <leader><tab> <C-^>

" Paste from the 0 register with <SPACE>p
:nnoremap <leader>pp "0p

" Run black with <leader>
:nnoremap <leader>] :Black<CR>

:autocmd BufWritePre *.py execute ':Black'

" Remove whitespace on save for python files
:autocmd BufWritePre *.py :%s/\s\+$//e

" Comment / UnComment
:nmap <leader>;; gcc

" Split vertically
:nnoremap <leader>w/ :vs<CR>

" Split horizontally
:nnoremap <leader>w- :sp<CR>

" Close window
:nnoremap <leader>wd :q<CR>

" Close all windows and vim
:nnoremap <leader>qq :qa<CR>


" Python specific abbreviations
:autocmd Filetype python :iabbrev ipdb import ipdb; ipdb.set_trace()
:autocmd Filetype python :iabbrev todo #TODO
:autocmd Filetype python :iabbrev note #NOTE


" Map C-\ C-n to ESC to escape the terminal insert mode
:tnoremap <Esc> <C-\><C-n>

" Switch to insert mode when entering the terminal
autocmd BufWinEnter,WinEnter * if &buftype == 'terminal' | silent! normal i | endif




"===================================="
"   PLUGIN CONFIG
"===================================="


" Markdown 
" disable header folding
let g:vim_markdown_folding_disabled = 1

" do not use conceal feature, the implementation is not so good
let g:vim_markdown_conceal = 0

" disable math tex conceal feature
let g:tex_conceal = ""
let g:vim_markdown_math = 1

" support front matter of various format
let g:vim_markdown_frontmatter = 1  " for YAML format
let g:vim_markdown_toml_frontmatter = 1  " for TOML format
let g:vim_markdown_json_frontmatter = 1  " for JSON format


" Black
" ---------------
let g:black_linelength = 79


" SyntaxAttr
" --------------------

" Show color map names to help with syntax highlighting
map <leader>-a :call SyntaxAttr()<CR>

" :set ww+=h,l

" Deoplete
" --------------------

" Enable autocompletion
let g:deoplete#enable_at_startup = 1



" Rooter
" --------------------

" Tell VIM Rooter where the project root is, using a blank .rooter-project file
let g:rooter_patterns = ['.rooter-project']



" GitGitter
" --------------------

" GitGutter Icons
let g:gitgutter_sign_removed = '×'



" Vimagit
" --------------------

nnoremap <Leader>gs :Magit<CR>



" Airline
" --------------------

" Airline Theme
" let g:airline_theme='neospace'
let g:shades_of_purple_airline = 1
let g:airline_theme='shades_of_purple'
" Make airline faster
let ttimeoutlen = 10

" Turn on Ale in Airline
let g:airline#extensions#ale#enabled = 1



" Ale
" --------------------

" ALE Linting in your quickfix window
let g:ale_set_quickfix = 1

" Go to prev/next lint error in your buffer using <CTRL> ]
nmap <silent> <leader>ep <Plug>(ale_previous_wrap)
nmap <silent> <leader>en <Plug>(ale_next_wrap)

" Keep error gutter open all the time. Prevents skipping of the UI
let g:ale_sign_column_always = 1

" Linters
let g:ale_linters = {
\   'html': [],
\   'css': ['stylelint'],
\   'javascript': ['eslint'],
\   'python': ['flake8','pylint']
\}

let g:ale_open_list = 0

let g:ale_lint_on_save = 1


" Sneak
" --------------------

" Vim-sneak motion like EasyMotion
let g:sneak#label = 1
let g:sneak#use_ic_scs = 1



" UtilSnippets
" --------------------

" " Snippets config (start typing a snippets prefix, then <CTRL> e to expand it
" let g:UltiSnipsExpandTrigger="tab"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<s-tab>"



" Emmet
" --------------------

" let g:user_emmet_install_global = 0
" autocmd FileType html,css EmmetInstall
" let g:user_emmet_settings = webapi#json#decode(join(readfile(expand('~/.config/nvim/.snippets_custom.json')), "\n"))
" imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")


" Ripgrep
" --------------------

" Use Ripgrep instead of Ag for fzf
" https://github.com/junegunn/fzf.vim#advanced-customization
command! -bang -nargs=* RgAg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

" store history of FZF searches (ctrl-p to search back)
let g:fzf_history_dir = '~/.fzf/fzf-history'



" Surround
" --------------------

" Change Surrount
nmap <Leader>cs cs

" Delete Surround
nmap <Leader>ds ds

" New Surround around word
nmap <Leader>ns ysiw

" New Surround around line
nmap <Leader>nsl yss





"===================================="
"   LANGUAGE SPECIFIC
"===================================="

" Python
" --------------------

" Python support via Jedi
let g:jedi#force_py_version = 3
let g:jedi#use_splits_not_buffers = "right"
let g:jedi#goto_definitions_command = "<leader>pg"

" Python code formatting: https://github.com/Chiel92/vim-autoformat
let g:formatter_yapf_style = 'pep8'



" Javascript
" --------------------

autocmd FileType javascript set formatprg=prettier-eslint\
            \ --print-width\ 100\
            \ --tab-width\ 4\
            \ --single-quote\
            \ --trailing-comma\ all\
            \ --no-bracket-spacing\
            \ --stdin



" JSX
" --------------------
let g:jsx_ext_required = 0





"===================================="
"   BACKUP
"===================================="

" https://stackoverflow.com/a/821914
" backup to ~/.tmp
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
