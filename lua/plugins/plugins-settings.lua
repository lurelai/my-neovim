return function()
	-- Lightline
	vim.g.lightline = {
		colorscheme = "one",
		background 	= "dark"
	}


	-- nvim-tree
	vim.g.loaded_netrw = 1
	vim.g.loaded_netrwPlugin = 1


	-- emmet
	vim.g.user_emmet_install_global = 0
	vim.g.user_emmet_mode = "in"
	vim.g.user_emmet_leader_key = "<C-p>"
	vim.cmd("autocmd FileType html,css EmmetInstall")
end

