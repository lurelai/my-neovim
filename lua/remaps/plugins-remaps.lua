return function()
	-- Nvim remaps
	vim.keymap.set('n', '<leader>da', ':NvimTreeToggle<CR>')	


	-- fzf-lua remaps
	vim.keymap.set('n', '<leader>p', ':FzfLua git_files<CR>')

	-- Change themes
	vim.keymap.set('n', '<leader>t', function ()
		currentTheme = vim.g.colors_name

		if(currentTheme == "onedark") then
			vim.cmd("colorscheme tokyodark")

		elseif (currentTheme == "tokyodark") then
			vim.cmd("colorscheme onedark")

		else 
			vim.cmd("colorscheme onedark")
		end

		vim.cmd("syntax on")
	end)
end

