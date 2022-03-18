call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'fatih/molokai'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'SirVer/ultisnips'
Plug 'shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', { 'do': 'make' }
Plug 'jiangmiao/auto-pairs'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'preservim/nerdcommenter'
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'tversteeg/registers.nvim', { 'branch': 'main' }
call plug#end()

"==================genral-configs==============
let mapleader = ";"
set updatetime=100
set splitright
set splitbelow
filetype plugin on
set ignorecase
set smartcase
set encoding=UTF-8
set maxmempattern=5000
set nohlsearch
set foldmethod=syntax
set foldnestmax=1
set foldenable
" to open folds when files get open
au BufRead * normal zR

"==================ulti-snips-configs==========
"using tab to go to next placeholder of ultisnips
let g:UltiSnipsExpandTrigger="<tab>"                                            
let g:UltiSnipsJumpForwardTrigger="<tab>"                                       
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"



"==================vim-go-configs==============
set completeopt-=preview  "to not show the godoc split

let g:go_fmt_command = "goimports"    "Run goimports along gofmt on each save
let g:go_auto_type_info = 1           "Automatically get signature/type info for object under cursor
let g:go_def_mode = "gopls"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_function_parameters = 1
let g:rehash256 = 1
let g:molokai_original = 1
let g:go_doc_keywordprg_enabled = 0
let g:go_fmt_fail_silently = 1
let g:go_diagnostics_level = 2
let g:go_updatetime = 100
let g:go_rename_command = 'gopls'

let g:go_list_type = 'locationlist'
let g:go_metalinter_command='golangci-lint'
let g:go_metalinter_autosave = 0

"=======================key mapping=================================
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fg :Rg<CR>
nnoremap <leader>fb :Buffers<CR>

nnoremap <leader>p :NvimTreeFindFileToggle<CR>
nnoremap <leader>w <C-w>w<CR>
"fold and unflod functions
map - vafzf  
map + zo

"rename variable in module level with all its refrences
nnoremap <leader>r :GoRename<CR>

"set breakpoint for debug
nnoremap <leader>b :GoDebugBreakpoint<CR>

"set breakpoint for debug
nnoremap <leader>s :GoDebugConnect 127.0.0.1:8181<CR>

"go to next or previous error in errorFix list
map <C-n> :cn<CR>
map <C-p> :cp<CR> 

" turn to next or previous errors, after open location list
nmap <C-n> :lnext<CR>
nmap <C-p> :lprevious<CR>

"completion with ctrl space
inoremap <C-space> <C-x><C-o>
"saving
nnoremap <C-s> :w<CR>

nnoremap <leader>fs :GoFillStruct<CR>

"======================visuals======================================
syntax enable
set relativenumber
set number
colorscheme molokai
highlight LineNr ctermfg=gray

"=================functions=======================================
call deoplete#custom#option('omni_patterns', {
\ 'go': '[^. *\t]\.\w*',
\})

"===================lua plugins=========================
lua require('plugins.nvim-tree')
lua require('plugins.nvim-web-devicons')
lua require'nvim-web-devicons'.get_icons()
