require("majid")
-- just for easy mapping ------------------------------------
--function map(mode, shortcut, command)
  --vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
--end

--function nmap(shortcut, command)
  --map('n', shortcut, command)
--end

--function imap(shortcut, command)
  --map('i', shortcut, command)
--end

-- general configs -----------------------------------------
--vim.g.mapleader = ';'
--vim.opt.updatetime = 200 
--vim.opt.splitright = true
--vim.opt.splitbelow = true
--vim.opt.ignorecase = true
--vim.opt.smartcase = true
--vim.opt.encoding = 'utf-8'
--vim.opt.maxmempattern = 5000 
--vim.opt.hlsearch = false 
--vim.g.rehash256 = true
--vim.g.molokai_original = true
--vim.opt.foldnestmax = 1
--vim.opt.foldenable = true
--vim.opt.hidden = true
--vim.opt.relativenumber= true
--vim.opt.number= true
--vim.opt.syntax= 'ON'

-- Treesitter folding 
--vim.wo.foldmethod = 'expr'
--vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'

--vim.cmd('filetype plugin indent on')
--vim.cmd('highlight LineNr ctermfg=gray')
--vim.cmd('au BufRead * normal zR')

-- copilot configs -----------------------------------
--vim.g.copilot_no_tab_map = true
--vim.g.copilot_assume_mapped = true
--vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
--vim.g.copilot_proxy = '127.0.0.1:2080' 

-- vsnip configs -------------------------------------
--vim.cmd [[
--" NOTE: You can use other key to expand snippet.

--" Expand
--" imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
--" smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'

--" Expand or jump
--" imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
--" smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

--" Jump forward or backward
--imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
--smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
--imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
--smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

--" Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
--" See https://github.com/hrsh7th/vim-vsnip/pull/50
--nmap        s   <Plug>(vsnip-select-text)
--xmap        s   <Plug>(vsnip-select-text)
--nmap        S   <Plug>(vsnip-cut-text)
--xmap        S   <Plug>(vsnip-cut-text)

--" If you want to use snippet for multiple filetypes, you can `g:vsnip_filetypes` for it.
--"let g:vsnip_filetypes = {}
--"let g:vsnip_filetypes.javascriptreact = ['javascript']
--"let g:vsnip_filetypes.typescriptreact = ['typescript']
--]]

--vim.g.vsnip_snippet_dir= '~/.config/nvim/vsnip'
-- vim-go-configs ----------------------------------------
--vim.opt.completeopt = {'menuone', 'noselect', 'noinsert'}
--vim.g.go_fmt_command = 'goimports'
--vim.g.go_auto_type_info= true
--vim.g.go_def_mode = 'gopls'
--vim.g.go_highlight_types = true
--vim.g.go_highlight_fields = true
--vim.g.go_highlight_function_calls = true
--vim.g.go_highlight_function_parameters = true
--vim.g.go_doc_keywordprg_enabled = false
--vim.g.go_fmt_fail_silently = true
--vim.g.go_diagnostics_level = 2
--vim.g.go_updatetime = 100
--vim.g.go_rename_command = 'gopls'
--vim.g.go_list_type = 'locationlist'
--vim.g.go_metalinter_command='golangci-lint'
--vim.g.go_metalinter_autosave = false
--vim.g.go_addtags_transform = 'camelcase'

 --rust-------------------------------------------------
--vim.g.rustfmt_autosave = 1
--vim.g.rustfmt_emit_files = 1
--vim.g.rustfmt_fail_silently = 0


-- key-mapping -----------------------------------------
--nmap('<leader>ff',':Files<CR>')
--nmap('<leader>fg',':Rg <C-R><C-W><CR>')
--nmap('<leader>rg',':Rg<CR>')
--nmap('<leader>fb',':Buffers<CR>')
--nmap('<leader>fl',':Lines <C-R><C-W><CR>')

----nmap('<leader>p',':NvimTreeFindFileToggle<CR>')
--nmap('<leader>w','<C-w>w<CR>')

---- "rename variable in module level with all its refrences
--nmap('<leader>r',':GoRename<CR>')

---- go to next or previous error in errorFix list
--nmap('<C-n>',':cn<CR>')
--nmap('<C-p>',':cp<CR>')
---- 
---- " turn to next or previous errors, after open location list
--nmap('<C-n>',':lnext<CR>')
--nmap('<C-p>',':lprevious<CR>')

---- "completion with ctrl space
----imap("<C-space>","<C-x><C-o>")
----imap("<C-p>","<C-x><C-o>")
--nmap('<leader>fs',':GoFillStruct<CR>')
--nmap('gr',':GoReferrers<CR>')

---- go to definition
---- Code navigation shortcuts
--nmap('<C-]>',':lua vim.lsp.buf.definition()<CR>')
--nmap('K',':lua vim.lsp.buf.hover()<CR>')
--nmap('gD',':lua vim.lsp.buf.implementation()<CR>')
--nmap('<C-k>',':lua vim.lsp.buf.signature_help()<CR>')
--nmap('1gD',':lua vim.lsp.buf.type_definition()<CR>')
----nmap('gr',':lua vim.lsp.buf.references()<CR>')
--nmap('g0',':lua vim.lsp.buf.document_symbol()<CR>')
--nmap('gW',':lua vim.lsp.buf.workspace_symbol()<CR>')
--nmap('ga',':lua vim.lsp.buf.code_action()<CR>')


---- temp  key map
--nmap('<C-d>','<C-d>zz')
--nmap('<C-u>','<C-u>zz')
--nmap('<S-h>','<S-h>zz')
--nmap('<S-l>','<S-l>zz')
--vim.keymap.set("x", "<leader>p", [["_dP]])
--vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
--vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

--require('mason').setup()
--rt = require('rust-tools')
--rt.setup({
	--tools = { -- rust-tools options
        --autoSetHints = true,
        --inlay_hints = {
            --show_parameter_hints = false,
            --parameter_hints_prefix = "",
            --other_hints_prefix = "",
        --},
    --},
    --server = {
	     --on_attach = function(_, bufnr)
                      ---- Hover actions
                      --vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
                      ---- Code action groups
                      --vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
                 --end,
            --["rust-analyzer"] = {
                --checkOnSave = {
                    --command = "clippy"
                --}, 
            --},
    --},
--}) 


-- LSP Diagnostics Options Setup 
--local sign = function(opts)
  --vim.fn.sign_define(opts.name, {
    --texthl = opts.name,
    --text = opts.text,
    --numhl = ''
  --})
--end

--sign({name = 'DiagnosticSignError', text = ''})
--sign({name = 'DiagnosticSignWarn', text = ''})
--sign({name = 'DiagnosticSignHint', text = ''})
--sign({name = 'DiagnosticSignInfo', text = ''})

--vim.diagnostic.config({
    --virtual_text = false,
    --signs = true,
    --update_in_insert = true,
    --underline = true,
    --severity_sort = false,
    --float = {
        --border = 'rounded',
        --source = 'always',
        --header = '',
        --prefix = '',
    --},
--})

--vim.cmd([[
--set signcolumn=yes
--autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
--]])


-- Completion Plugin Setup
--local cmp = require'cmp'

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
--cmp.setup.cmdline({ '/', '?' }, {
    --mapping = cmp.mapping.preset.cmdline(),
    --sources = {
      --{ name = 'buffer' }
    --}
--})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
--cmp.setup.cmdline(':', {
    --mapping = cmp.mapping.preset.cmdline(),
    --sources = cmp.config.sources({
      --{ name = 'path' }
    --}, {
      --{ name = 'cmdline' }
    --})
--})
--cmp.setup.cmdline(':', {
  --sources = {
    --{
      --name = 'cmdline',
      --option = {
        --ignore_cmds = {}
      --}
    --}
  --} 
--})

--cmp.setup({
  ---- Enable LSP snippets
  --snippet = {
    --expand = function(args)
	--vim.fn["vsnip#anonymous"](args.body)
    --end,
  --},
  ----view = 'native',
  --mapping = {
    --['<C-p>'] = cmp.mapping.select_prev_item(),
    --['<C-n>'] = cmp.mapping.select_next_item(),
    ---- Add tab support
    --['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ----['<Tab>'] = cmp.mapping.select_next_item(),
    --['<C-S-f>'] = cmp.mapping.scroll_docs(-4),
    --['<C-f>'] = cmp.mapping.scroll_docs(4),
    --['<C-space>'] = cmp.mapping.complete(),
    --['<C-e>'] = cmp.mapping.close(),
    --['<Tab>'] = cmp.mapping.confirm({
      --behavior = cmp.ConfirmBehavior.Replace,
      --select = true,
    --})
  --},
  ---- Installed sources:
  --sources = {
    ----{ name = 'path' },                              -- file paths
    --{ name = 'nvim_lsp', keyword_length = 3 },      -- from language server
    --{ name = 'nvim_lsp_signature_help'},            -- display function signatures with current parameter emphasized
    --{ name = 'nvim_lua', keyword_length = 2},       -- complete neovim's Lua runtime API such vim.lsp.*
    --{ name = 'vsnip' },         		    -- nvim-cmp source for vim-vsnip 
    --{ name = 'buffer', keyword_length = 2 },        -- source current buffer
    --{ name = 'calc'},                               -- source for math calculation
  --},
  --window = {
      --completion = cmp.config.window.bordered(),
      --documentation = cmp.config.window.bordered(),
  --},
  --formatting = {
      --fields = {'menu', 'abbr', 'kind'},
      --format = function(entry, item)
          --local menu_icon ={
              --nvim_lsp = 'λ',
              --vsnip = '⋗',
              --buffer = 'Ω',
              --path = '🖫',
          --}
          --item.menu = menu_icon[entry.source.name]
          --return item
      --end,
  --},
--})

--require("nvim-autopairs").setup()
--local cmp_autopairs = require('nvim-autopairs.completion.cmp')
--cmp.event:on(
  --'confirm_done',
  --cmp_autopairs.on_confirm_done()
--)

-- Treesitter Plugin Setup 
--require('nvim-treesitter.configs').setup {
  --ensure_installed = { "lua", "rust", "toml","go" },
  --auto_install = true,
  --highlight = {
    --enable = true,
    --additional_vim_regex_highlighting=false,
  --},
  --ident = { enable = true }, 
  --rainbow = {
    --enable = true,
    --extended_mode = true,
    --max_file_lines = nil,
  --}
--}

--require('plugins.nvim-web-devicons')
--require('nvim-web-devicons').get_icons()


-- I don't know why it is not working when is in other places in this file
--vim.cmd('colorscheme molokai') 
--vim.g.rehash256 = true
--vim.g.molokai_original = true


--require("todo-comments").setup({
--keywords = {
    ----FIX = {
      ----icon = " ", -- icon used for the sign, and in search results
      ----color = "error", -- can be a hex color, or a named color (see below)
      ----alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a set of other keywords that all map to this FIX keywords
      ------ signs = false, -- configure signs for some keywords individually
    ----},
    --TODO = { icon = " ", color = "info" },
    --HACK = { icon = " ", color = "warning" },
    --WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
    ----PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
    ----NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
    ----TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
  --},
  --gui_style = {
    --fg = "NONE", -- The gui style to use for the fg highlight group.
    --bg = "BOLD", -- The gui style to use for the bg highlight group.
  --},
  --highlight = {
    --multiline = true, -- enable multine todo comments
    --multiline_pattern = "^.", -- lua pattern to match the next multiline from the start of the matched keyword
    --multiline_context = 10, -- extra lines that will be re-evaluated when changing a line
    --before = "", -- "fg" or "bg" or empty
    --keyword = "wide", -- "fg", "bg", "wide", "wide_bg", "wide_fg" or empty. (wide and wide_bg is the same as bg, but will also highlight surrounding characters, wide_fg acts accordingly but with fg)
    --after = "fg", -- "fg" or "bg" or empty
    --pattern = [[.*<(KEYWORDS)\s*:]], -- pattern or table of patterns, used for highlightng (vim regex)
    --comments_only = true, -- uses treesitter to match keywords in comments only
    --max_line_len = 400, -- ignore lines longer than this
    --exclude = {}, -- list of file types to exclude highlighting
  --},
  --colors = {
    --error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
    --warning = { "DiagnosticWarn", "WarningMsg", "#FBBF24" },
    --info = { "DiagnosticInfo", "#2563EB" },
    --hint = { "DiagnosticHint", "#10B981" },
    --default = { "Identifier", "#7C3AED" },
    --test = { "Identifier", "#FF00FF" }
  --},
  --search = {
    --command = "rg",
    --args = {
      --"--color=never",
      --"--no-heading",
      --"--with-filename",
      --"--line-number",
      --"--column",
    --},
    ---- regex that will be used to match keywords.
    ---- don't replace the (KEYWORDS) placeholder
    --pattern = [[\b(KEYWORDS):]], -- ripgrep regex
    ---- pattern = [[\b(KEYWORDS)\b]], -- match without the extra colon. You'll likely get false positives
  --},
--})

--require('gitsigns').setup()

-- DAP config
--require('dap-go').setup()
--require('dapui').setup()
--local dap, dapui =require("dap"),require("dapui")
--dap.listeners.after.event_initialized["dapui_config"]=function()
  --vim.cmd('NvimTreeClose')
  --dapui.open()
--end
--dap.listeners.before.event_terminated["dapui_config"]=function()
  --dapui.close()
--end
--dap.listeners.before.event_exited["dapui_config"]=function()
  --dapui.close()
--end
--require("nvim-dap-virtual-text").setup()
--nmap('sb',":DapToggleBreakpoint<CR>")
--nmap('<space>c',":DapContinue<CR>")
--nmap('<space>i',":DapStepInto<CR>")
--nmap('<space>',":DapStepOver<CR>")
--nmap('<space>o',":DapStepOut<CR>")
--nmap('st',":lua require('dap-go').debug_test()<CR>")
--nmap('se',":lua require('dapui').close()<CR>")


--require('lualine').setup({
	--options = { theme = 'gruvbox' },
	--sections = {
                    --lualine_c = { {'filename', file_status = true, path = 1} },
          --},
--})


--require("oil").setup({
    --keymaps ={
            --['<S-h>'] = "actions.toggle_hidden",
	--['-'] = "actions.parent",
            ----["_"] = "actions.open_cwd",
	--["<CR>"] = "actions.select",
	--["_"] = "actions.close",
    --},
    --use_default_keymaps = false,
    --view_options = {
    ---- Show files and directories that start with "."
    --show_hidden = false,
  --},
--})
--nmap('-',":Oil<CR>")


--require('treesj').setup({
	  --use_default_keymaps = false,
--})
--nmap('gj',":TSJToggle<CR>")


--return require('packer').startup(function()
  --use 'wbthomason/packer.nvim'
  --use 'williamboman/mason.nvim'    
  --use 'williamboman/mason-lspconfig.nvim'
  --use 'neovim/nvim-lspconfig'
  --use { 'fatih/vim-go', ft = 'go' } 
  --use 'simrat39/rust-tools.nvim'
  --use 'simrat39/inlay-hints.nvim'
  --use {'fatih/molokai', ft = 'go'} 
  --use 'junegunn/fzf'
  --use 'junegunn/fzf.vim' 
  --use 'windwp/nvim-autopairs'
  --use 'preservim/nerdcommenter' 
  --use 'nvim-treesitter/nvim-treesitter'
  --use {'rust-lang/rust.vim', ft = 'rust'}
  --use 'kyazdani42/nvim-web-devicons' 
---- Completion framework:
  --use 'hrsh7th/nvim-cmp' 
---- LSP completion source:
  --use 'hrsh7th/cmp-nvim-lsp'
---- Useful completion sources:
  --use 'hrsh7th/cmp-nvim-lua'
  --use 'hrsh7th/cmp-nvim-lsp-signature-help'
  --use 'hrsh7th/cmp-vsnip'                             
  --use 'hrsh7th/cmp-path'                              
  --use 'hrsh7th/cmp-buffer'                            
  --use 'hrsh7th/vim-vsnip'
  --use { 'folke/todo-comments.nvim', requires = 'nvim-lua/plenary.nvim'}
  --use 'github/copilot.vim'
  --use 'lewis6991/gitsigns.nvim'
  --use 'mfussenegger/nvim-dap'
  --use 'leoluz/nvim-dap-go'
  --use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
  --use 'theHamsta/nvim-dap-virtual-text'
  --use {
  --'nvim-lualine/lualine.nvim',
  --requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  --}
  --use 'stevearc/oil.nvim'
  --use{'Wansmer/treesj', requires = { 'nvim-treesitter/nvim-treesitter' } }
--end)

