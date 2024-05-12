return function()
	vim.keymap.set('n', '<C-q>', ':q<CR>') 			-- Easy quit
	vim.keymap.set('n', '<C-s>', ':w<CR>')			-- Easy save
	vim.keymap.set('n', ';', ':')					-- Ease way to enter in the type mode

	vim.keymap.set('i', '<C-q>', '<ESC>:q<CR>')		-- easy way to quit in the insert mode
	vim.keymap.set('i', '<C-s>', '<ESC>:w<CR>a')	-- easy way to save in the insert mode

	vim.keymap.set('n', '<leader>l', ":set invlist<cr>") -- Toggle the "set list"

	-- plugins remaps
	require("remaps/plugins-remaps")()
end

