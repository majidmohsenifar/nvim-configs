-- vim-go-configs ----------------------------------------
vim.opt.completeopt = {'menuone', 'noselect', 'noinsert'}
vim.g.go_fmt_command = 'goimports'
vim.g.go_auto_type_info= true
vim.g.go_def_mode = 'gopls'
vim.g.go_highlight_types = true
vim.g.go_highlight_fields = true
vim.g.go_highlight_function_calls = true
vim.g.go_highlight_function_parameters = true
vim.g.go_doc_keywordprg_enabled = false
vim.g.go_fmt_fail_silently = true
vim.g.go_diagnostics_level = 2
vim.g.go_updatetime = 100
vim.g.go_rename_command = 'gopls'
vim.g.go_list_type = 'locationlist'
vim.g.go_metalinter_command='golangci-lint'
vim.g.go_metalinter_autosave = false
vim.g.go_addtags_transform = 'camelcase'
