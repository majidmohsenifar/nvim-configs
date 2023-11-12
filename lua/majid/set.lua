

vim.g.mapleader = ';'
vim.opt.updatetime = 200 
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.encoding = 'utf-8'
vim.opt.maxmempattern = 5000 
vim.opt.hlsearch = false 
vim.g.rehash256 = true
vim.g.molokai_original = true
vim.opt.foldnestmax = 1
vim.opt.foldenable = true
vim.opt.hidden = true
vim.opt.relativenumber= true
vim.opt.number= true
vim.opt.syntax= 'ON'


-- Treesitter folding 
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'

--TODO: what are this for
vim.cmd('filetype plugin indent on')
vim.cmd('highlight LineNr ctermfg=gray')
vim.cmd('au BufRead * normal zR')


vim.cmd('colorscheme molokai') 
vim.g.rehash256 = true
vim.g.molokai_original = true
