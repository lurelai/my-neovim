return function()
	vim.opt.rnu 					= true 				-- Relative numbers option
	vim.opt.showtabline 			= 2					-- Allow the tabline on the top of the screen
	vim.opt.tabstop 				= 4					-- Set the tabstop as 4 (default tab of files)
	vim.opt.shiftwidth				= 4					-- Set the default tab as 4 (the tab typed)

	vim.opt.guicursor				= "n-v-c-i:block"	-- Set the insert-cursor as block
	vim.opt.hidden 					= true				-- Hide the current buffer when a new file is created

	vim.opt.incsearch				= true				-- Incremental search
	vim.opt.ignorecase				= true				-- Ignore case in search
	vim.opt.smartcase				= true				-- Consider case if there's a uppercase character

	vim.opt.signcolumn				= "yes" 			-- Set a padding on the left
	vim.opt.colorcolumn				= "120" 			-- Create a column on the right

	vim.opt.laststatus				= 3					-- Set the status line always the same
	vim.opt.cmdheight				= 2					-- More space to the output messages
	vim.opt.encoding				= "utf-8"			-- Allows utf-8
		
	vim.opt.backup					= false 			-- Don't create backup
	vim.opt.writebackup				= false				-- Don't write any backup

	vim.opt.autoread				= true				-- Show changes at the file on the real time
	vim.opt.mouse					= "a"


	vim.opt.list					= true
	vim.opt.listchars				= {
		tab			= "  ┊",
		trail		= "●",
		space		= "·",
	}


	vim.opt.showmode 				= false				-- Remove the "--insert--" on the bottom of the window (better with lightline plugin)

	-- Plugins options
	require("options/plugins-options")
end

