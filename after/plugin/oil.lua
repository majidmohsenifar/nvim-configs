require("oil").setup({
    keymaps ={
    	['<S-h>'] = "actions.toggle_hidden",
	['-'] = "actions.parent",
            --["_"] = "actions.open_cwd",
	["<CR>"] = "actions.select",
	["_"] = "actions.close",
    },
    use_default_keymaps = false,
    view_options = {
    -- Show files and directories that start with "."
    show_hidden = false,
  },
})
nmap('-',":Oil<CR>")
