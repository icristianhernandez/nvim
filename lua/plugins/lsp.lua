return {
	-- for installing lsp
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{
				"williamboman/mason.nvim",
				opts = {},
			},

			{
				"williamboman/mason-lspconfig.nvim",
				opts = {
					ensure_installed = { "lua_ls" },
				},
			},
		},

		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})

			vim.keymap.set("n", "<leader>lh", vim.lsp.buf.hover, { desc = "Hover information" })
			vim.keymap.set(
				{ "n", "v" },
				"<leader>la",
				vim.lsp.buf.code_action,
				{ desc = "Code actions at the current position" }
			)
			vim.keymap.set(
				"n",
				"<leader>lp",
				vim.diagnostic.goto_prev,
				{ desc = "Jump to the previous diagnostic in the buffer" }
			)
			vim.keymap.set(
				"n",
				"<leader>ln",
				vim.diagnostic.goto_next,
				{ desc = "Jump to the next diagnostic in the buffer" }
			)
			vim.keymap.set(
				"n",
				"<leader>ld",
				vim.lsp.buf.declaration,
				{ desc = "Go to the declaration of the symbol under the cursor" }
			)
			vim.keymap.set(
				"n",
				"<leader>lD",
				vim.lsp.buf.definition,
				{ desc = "Go to the definition of the symbol under the cursor" }
			)
			vim.keymap.set(
				"n",
				"<leader>li",
				vim.lsp.buf.implementation,
				{ desc = "Go to the implementation(s) of the symbol under the cursor" }
			)
			vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, { desc = "Rename the symbol under the cursor" })
			vim.keymap.set(
				"n",
				"<leader>lR",
				vim.lsp.buf.references,
				{ desc = "Show references to the symbol under the cursor" }
			)

			-- custom characters for the signs of visual columns
			local signs = { Error = "󰅚 ", Warn = "󰀪 ", Hint = "󰌶 ", Info = " " }
			for type, icon in pairs(signs) do
				local hl = "DiagnosticSign" .. type
				vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
			end
		end,
	},

	{
		"nvimtools/none-ls.nvim",
		config = function()
			local null_ls = require("null-ls")
			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.stylua,
					-- null_ls.builtins.diagnostics.eslint,
					-- null_ls.builtins.completion.spell,
				},
			})

			vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, { desc = "Autoformat" })
		end,
	},
}
