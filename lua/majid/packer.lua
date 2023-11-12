local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- LSP
  use 'neovim/nvim-lspconfig'

  -- Go
  use { 'fatih/vim-go', ft = 'go' } 
  use {'fatih/molokai', ft = 'go'} 

  -- Rust
  use 'simrat39/rust-tools.nvim'
  use 'simrat39/inlay-hints.nvim'
  use {'rust-lang/rust.vim', ft = 'rust'}

  -- fzf
  use 'junegunn/fzf'
  use 'junegunn/fzf.vim' 

  -- autopairs
  use 'windwp/nvim-autopairs'

  -- comment
  use 'preservim/nerdcommenter' 

  -- treesitter
  use 'nvim-treesitter/nvim-treesitter'
  use 'kyazdani42/nvim-web-devicons' 
  
-- Completion framework:
  use 'hrsh7th/nvim-cmp' 
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'hrsh7th/cmp-vsnip'                             
  use 'hrsh7th/cmp-path'                              
  use 'hrsh7th/cmp-buffer'                            
  use 'hrsh7th/vim-vsnip'

  -- todo comments
  use { 'folke/todo-comments.nvim', requires = 'nvim-lua/plenary.nvim'}

  -- Copilot
  use 'github/copilot.vim'

  -- git
  use 'lewis6991/gitsigns.nvim'

  -- dap
  use 'mfussenegger/nvim-dap'
  use 'leoluz/nvim-dap-go'
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
  use 'theHamsta/nvim-dap-virtual-text'

  -- lualine
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- file explorer
  use 'stevearc/oil.nvim'

  -- splitting/joining blocks of code 
  use{'Wansmer/treesj', requires = { 'nvim-treesitter/nvim-treesitter' } }

  if packer_bootstrap then
        require('packer').sync()
    end
end)

