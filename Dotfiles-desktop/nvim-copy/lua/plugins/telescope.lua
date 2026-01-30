return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope-live-grep-args.nvim' },

	config = function()
		local builtin = require('telescope.builtin')
		vim.keymap.set("n", "<leader>ff", builtin.find_files) 
		vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
		vim.keymap.set('n', '<leader>f/', builtin.current_buffer_fuzzy_find)
		end
}
