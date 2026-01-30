return {
	{
		"mason-org/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
	    "mason-org/mason-lspconfig.nvim",
	    dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
		"saghen/blink.cmp",
	    },
	    opts = {
			ensure_installed = { "lua_ls", "gopls", "vue_ls", "vtsls", "ts_ls", "csharp_ls" },
			handlers = {
				function(server)
					local lspconfig = require("lspconfig")
					local caps = require("blick.cmp").get_lsp_capabilities()
					lspconfig[server].setup({
						capabilities = caps,
					})
				end
			},
		},
	},
	{

	}
}

