-- return {
-- 	"shaunsingh/nord.nvim",
-- 	lazy = false, -- make sure we load this during startup if it is your main colorscheme
-- 	priority = 1000, -- make sure to load this before all the other start plugins
-- 	config = function()
-- 		-- Example config in lua
-- 		vim.g.nord_contrast = true             -- Make sidebars and popup menus like nvim-tree and telescope have a different background
-- 		vim.g.nord_borders = false             -- Enable the border between verticaly split windows visable
-- 		vim.g.nord_disable_background = true   -- Disable the setting of background color so that NeoVim can use your terminal background
-- 		vim.g.set_cursorline_transparent = false -- Set the cursorline transparent/visible
-- 		vim.g.nord_italic = false              -- enables/disables italics
-- 		vim.g.nord_enable_sidebar_background = false -- Re-enables the background of the sidebar if you disabled the background of everything
-- 		vim.g.nord_uniform_diff_background = true -- enables/disables colorful backgrounds when used in diff mode
-- 		vim.g.nord_bold = false                -- enables/disables bold
--
-- 		-- Load the colorscheme
-- 		require("nord").set()
-- 	end,
-- }
--
--
return {
	"neanias/everforest-nvim",
	version = false,
	lazy = false,
	priority = 1000, -- make sure to load this before all the other start plugins
	-- Optional; default configuration will be used if setup isn't called.
	config = function()
		vim.opt.termguicolors = true
		vim.g.everforest_background = "hard"
		vim.g.everforest_disable_italic_comment = true
		vim.cmd.colorscheme("everforest")
	end,
}
