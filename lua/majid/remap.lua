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
-- key-mapping -----------------------------------------
nmap('<leader>ff',':Files<CR>')
--nmap('<leader>fg',':Rg <C-R><C-W><CR>')
nmap('<leader>fg',':Rg<CR>')
nmap('<leader>fb',':Buffers<CR>')
nmap('<leader>fl',':Lines <C-R><C-W><CR>')

nmap('<leader>w','<C-w>w<CR>')

-- "rename variable in module level with all its refrences
nmap('<leader>r',':GoRename<CR>')

-- go to next or previous error in errorFix list
nmap('<C-n>',':cn<CR>')
nmap('<C-p>',':cp<CR>')
-- 
-- " turn to next or previous errors, after open location list
nmap('<C-n>',':cnext<CR>')
nmap('<C-p>',':cprevious<CR>')

-- "completion with ctrl space
--imap("<C-space>","<C-x><C-o>")
--imap("<C-p>","<C-x><C-o>")
nmap('<leader>fs',':GoFillStruct<CR>')
--nmap('gr',':GoReferrers<CR>')

-- go to definition
-- Code navigation shortcuts
nmap('<C-]>',':lua vim.lsp.buf.definition()<CR>')
nmap('K',':lua vim.lsp.buf.hover()<CR>')
nmap('gD',':lua vim.lsp.buf.implementation()<CR>')
nmap('<C-k>',':lua vim.lsp.buf.signature_help()<CR>')
nmap('1gD',':lua vim.lsp.buf.type_definition()<CR>')
nmap('gr',':lua vim.lsp.buf.references()<CR>')
nmap('g0',':lua vim.lsp.buf.document_symbol()<CR>')
nmap('gW',':lua vim.lsp.buf.workspace_symbol()<CR>')
nmap('ga',':lua vim.lsp.buf.code_action()<CR>')



-- temp  key map
nmap('<C-d>','<C-d>zz')
nmap('<C-u>','<C-u>zz')
nmap('<S-h>','<S-h>zz')
nmap('<S-l>','<S-l>zz')
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
