return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
		vim.keymap.set("n", "<leader>m", ":Mason<CR>", {}),
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "bashls", "clangd", "markdown_oxide" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = { "williamboman/mason-lspconfig.nvim" },
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			vim.lsp.config("lua_ls", { capabilities = capabilities })
			vim.lsp.enable("lua_ls")
			vim.lsp.config("bashls", { capabilities = capabilities })
			vim.lsp.enable("bashls")
			vim.lsp.config("clangd", { capabilities = capabilities })
			vim.lsp.enable("clangd")
			vim.lsp.config("markdown_oxide", { capabilities = capabilities })
			vim.lsp.enable("markdown_oxide")
			vim.lsp.config("basedpyright", { capabilities = capabilities })
			vim.lsp.enable("basedpyright")
			vim.keymap.set("n", "K", function()
				vim.lsp.buf.hover({ border = "rounded" })
			end, {})
			vim.keymap.set("n", "<leader>d", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>a", vim.lsp.buf.code_action, {})
		end,
	},
}
