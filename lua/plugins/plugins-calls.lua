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


	-- fzf-lua
	require("fzf-lua").setup {}


	-- onedark
	require("onedark").setup {
		style = "darker"
	}
	require("onedark").load()
end

