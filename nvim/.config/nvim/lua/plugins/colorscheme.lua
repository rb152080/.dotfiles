return {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
		if os.getenv("DISPLAY") == nil then
			vim.cmd("colorscheme default")
		else
			require("rose-pine").setup({
				styles = {
					italic = false,
					bold = false,
				},
			})
			vim.cmd("colorscheme rose-pine")
			vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		end
	end,
}
