return {
	"rb152080/flamingo.nvim",
	name = "flamingo.nvim",
	config = function()
		if os.getenv("DISPLAY") == nil then
			vim.cmd("colorscheme default")
            vim.opt.termguicolors = false
		else
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
		end
	end,
}
