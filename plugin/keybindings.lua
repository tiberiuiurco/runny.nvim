vim.api.nvim_set_keymap("n", "<F8>", '<CMD>lua require"runny.utils".get_bufnr()<CR>', { noremap = true })
vim.api.nvim_set_keymap("n", "<F4>", '<CMD>lua require"runny.cpp".cNr()<CR>', { noremap = true })
