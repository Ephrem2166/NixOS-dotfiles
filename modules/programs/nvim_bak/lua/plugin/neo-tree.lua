require("neo-tree-nvim").setup({
	opts = {
		filesystem = {
			filtered_items = {
				visible = true, -- visible by default
				hide_dotfiles = false,
				hide_gitignored = false,
			},
		},
	}
})
