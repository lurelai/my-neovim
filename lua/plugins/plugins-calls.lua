return function()
	-- plugins conffig
	require("plugins/plugins-settings")()

	-- nvim-autopairs
	require("nvim-autopairs").setup {} 

	
	-- nvim-tree
	require("nvim-tree").setup {
		filters = {
			dotfiles = false
		}
	}
end

