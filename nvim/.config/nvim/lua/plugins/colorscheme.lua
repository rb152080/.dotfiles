return {
	"rb152080/flamingo.nvim",
	name = "flamingo.nvim",
	config = function()
		require("flamingo").setup({
			styles = {
				italic = false,
				bold = false,
				transparency = false,
			},
		})
		vim.cmd("colorscheme flamingo")
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	end,
}

-- return {
-- 	"rose-pine/neovim",
-- 	name = "rose-pine",
-- 	config = function()
-- 		require("rose-pine").setup({
-- 			styles = {
-- 				italic = false,
-- 				bold = false,
-- 			},
-- 		})
-- 		vim.cmd("colorscheme rose-pine")
-- 		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- 		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- 	end,
-- }
