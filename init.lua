-- just for easy mapping ------------------------------------
function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

-- general configs -----------------------------------------
vim.g.mapleader = ';'
vim.opt.updatetime = 100 -- TODO is it correct? I mean the number should be string
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.encoding = 'utf-8'
vim.opt.maxmempattern = 5000 
vim.opt.hlsearch = false 
vim.opt.foldnestmax = 1
vim.opt.foldenable = true
vim.opt.hidden = true
vim.opt.relativenumber= true
vim.opt.number= true
vim.opt.syntax= 'ON'

-- Treesitter folding 
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'

vim.cmd('highlight LineNr ctermfg=gray')
vim.cmd('filetype plugin indent on')
vim.cmd('au BufRead * normal zR')
vim.cmd('colorscheme molokai') 


-- vim-go-configs ----------------------------------------
vim.opt.completeopt=preview 
vim.g.go_fmt_command = 'goimports'
vim.g.go_auto_type_info= true
vim.g.go_def_mode = 'gopls'
vim.g.go_highlight_types = true
vim.g.go_highlight_fields = true
vim.g.go_highlight_function_calls = true
vim.g.go_highlight_function_parameters = true
vim.g.rehash256 = true
vim.g.molokai_original = true
vim.g.go_doc_keywordprg_enabled = false
vim.g.go_fmt_fail_silently = true
vim.g.go_diagnostics_level = 2
vim.g.go_updatetime = 100
vim.g.go_rename_command = 'gopls'
vim.g.go_list_type = 'locationlist'
vim.g.go_metalinter_command='golangci-lint'
vim.g.go_metalinter_autosave = false
vim.g.go_addtags_transform = 'camelcase'

-- rust-------------------------------------------------
vim.g.rustfmt_autosave = 1
vim.g.rustfmt_emit_files = 1
vim.g.rustfmt_fail_silently = 0


-- key-mapping -----------------------------------------
nmap('<leader>ff',':Files<CR>')
nmap('<leader>fg',':Rg<CR>')
nmap('<leader>fb',':Buffers<CR>')

nmap('<leader>p',':NvimTreeFindFileToggle<CR>')
nmap('<leader>w','<C-w>w<CR>')

-- "rename variable in module level with all its refrences
nmap('<leader>r',':GoRename<CR>')

-- go to next or previous error in errorFix list
nmap('<C-n>',':cn<CR>')
nmap('<C-p>',':cp<CR>')
-- 
-- " turn to next or previous errors, after open location list
nmap('<C-n>',':lnext<CR>')
nmap('<C-p>',':lprevious<CR>')

-- "completion with ctrl space
--imap("<C-space>","<C-x><C-o>")
--imap("<C-p>","<C-x><C-o>")
nmap('<leader>fs',':GoFillStruct<CR>')

-- go to definition
nmap('<c-]>',':lua vim.lsp.buf.definition()<CR>')

require('mason').setup()
local rt = {
    server = {
        settings = {
            on_attach = function(_, bufnr)
                -- Hover actions
                vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
                -- Code action groups
                vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
                require 'illuminate'.on_attach(client)
            end,
            ["rust-analyzer"] = {
                checkOnSave = {
                    command = "clippy"
                }, 
            },
        }
    },
}
require('rust-tools').setup(rt)
require("mason-lspconfig").setup({
    ensure_installed = { "gopls" }
})

require('lspconfig').gopls.setup({})

-- LSP Diagnostics Options Setup 
local sign = function(opts)
  vim.fn.sign_define(opts.name, {
    texthl = opts.name,
    text = opts.text,
    numhl = ''
  })
end

sign({name = 'DiagnosticSignError', text = ''})
sign({name = 'DiagnosticSignWarn', text = ''})
sign({name = 'DiagnosticSignHint', text = ''})
sign({name = 'DiagnosticSignInfo', text = ''})

vim.diagnostic.config({
    virtual_text = false,
    signs = true,
    update_in_insert = true,
    underline = true,
    severity_sort = false,
    float = {
        border = 'rounded',
        source = 'always',
        header = '',
        prefix = '',
    },
})

vim.cmd([[
set signcolumn=yes
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])


-- Completion Plugin Setup
local cmp = require'cmp'
cmp.setup({
  -- Enable LSP snippets
  snippet = {
    expand = function(args)
        vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    -- Add tab support
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<C-S-f>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    })
  },
  -- Installed sources:
  sources = {
    { name = 'path' },                              -- file paths
    { name = 'nvim_lsp', keyword_length = 3 },      -- from language server
    { name = 'nvim_lsp_signature_help'},            -- display function signatures with current parameter emphasized
    { name = 'nvim_lua', keyword_length = 2},       -- complete neovim's Lua runtime API such vim.lsp.*
    { name = 'buffer', keyword_length = 2 },        -- source current buffer
    { name = 'vsnip', keyword_length = 2 },         -- nvim-cmp source for vim-vsnip 
    { name = 'calc'},                               -- source for math calculation
  },
  window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
  },
  formatting = {
      fields = {'menu', 'abbr', 'kind'},
      format = function(entry, item)
          local menu_icon ={
              nvim_lsp = 'λ',
              vsnip = '⋗',
              buffer = 'Ω',
              path = '🖫',
          }
          item.menu = menu_icon[entry.source.name]
          return item
      end,
  },
})

-- Treesitter Plugin Setup 
require('nvim-treesitter.configs').setup {
  ensure_installed = { "lua", "rust", "toml","go" },
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting=false,
  },
  ident = { enable = true }, 
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  }
}

require('plugins.nvim-tree')
require('plugins.nvim-web-devicons')
require('nvim-web-devicons').get_icons()


return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'williamboman/mason.nvim'    
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig'
  use 'simrat39/rust-tools.nvim'
  use { 'fatih/vim-go', run = ':UpdateRemotePlugins', ft = 'go' } 
  use 'fatih/molokai' 
  use 'junegunn/fzf'
  use 'junegunn/fzf.vim' 
  use 'jiangmiao/auto-pairs' 
  use 'AndrewRadev/splitjoin.vim' 
  use 'preservim/nerdcommenter' 
  use 'nvim-treesitter/nvim-treesitter'
  use 'rust-lang/rust.vim' 
  use 'kyazdani42/nvim-web-devicons' 
  use 'kyazdani42/nvim-tree.lua'
-- Completion framework:
  use 'hrsh7th/nvim-cmp' 
-- LSP completion source:
  use 'hrsh7th/cmp-nvim-lsp'
-- Useful completion sources:
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'hrsh7th/cmp-vsnip'                             
  use 'hrsh7th/cmp-path'                              
  use 'hrsh7th/cmp-buffer'                            
  use 'hrsh7th/vim-vsnip'
end)
