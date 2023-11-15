vim.g.mapleader = ';'

vim.o.mouse = ''
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.updatetime = 50 
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.encoding = 'utf-8'
vim.opt.maxmempattern = 5000 
vim.opt.hlsearch = false 
vim.opt.incsearch = true
vim.opt.foldnestmax = 1
vim.opt.foldenable = true
vim.opt.hidden = true
vim.opt.syntax= 'ON'
vim.opt.scrolloff = 8


vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.relativenumber= true
vim.opt.number= true

-- Treesitter folding 
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'

--TODO: what are this for
vim.cmd('filetype plugin indent on')
vim.cmd('highlight LineNr ctermfg=gray')
vim.cmd('au BufRead * normal zR')


vim.g.rehash256 = true
vim.g.molokai_original = true
vim.cmd('colorscheme molokai') 
