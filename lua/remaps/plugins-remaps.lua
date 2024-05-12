return function()
	-- Nvim remaps
	vim.keymap.set('n', '<leader>da', ':NvimTreeToggle<CR>')	


	-- fzf-lua remaps
	vim.keymap.set('n', '<leader>p', ':FzfLua git_files<CR>')
end

