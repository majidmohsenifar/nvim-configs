rt = require('rust-tools')
rt.setup({
	tools = { -- rust-tools options
        autoSetHints = true,
        inlay_hints = {
            show_parameter_hints = false,
            parameter_hints_prefix = "",
            other_hints_prefix = "",
        },
    },
    server = {
	     on_attach = function(_, bufnr)
      		-- Hover actions
      		vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
      		-- Code action groups
      		vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
    	     end,
            ["rust-analyzer"] = {
                checkOnSave = {
                    command = "clippy"
                }, 
            },
    },
}) 

-- rust-------------------------------------------------
vim.g.rustfmt_autosave = 1
vim.g.rustfmt_emit_files = 1
vim.g.rustfmt_fail_silently = 0
