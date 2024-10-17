local map = vim.keymap.set

vim.g.mapleader = " "

-- ##################################################
-- ####			  NEOVIM KEYBINDINGS		     ####
-- ##################################################

map("n", "x", '"_x', { desc = "Better X bind" })

map("x", "p", '"_c<Esc>p', { desc = "Paste without copy into register" })

map("n", "q", "<Cmd>close<CR>", { desc = "CLose current window" })

map("n", "j", "v:count == 0 ? 'gj' : 'j'", {
	expr = true,
	desc = "Move cursor down (display and real line)",
})

map("n", "k", "v:count == 0 ? 'gk' : 'k'", {
	expr = true,
	desc = "Move cursor up (display and real line)",
})

map("n", "<C-x>", function()
	require("Comment.api").toggle.linewise.current()
end, { desc = "comment toggle" })

map(
	"v",
	"<C-x>",
	"<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
	{ desc = "comment toggle" }
)

map(
	"n",
	"<leader>cd",
	"<cmd>lcd %:p:h<cr><cmd>pwd<cr>",
	{ desc = "Change current working directory locally and print cwd after that," }
)

map({ "n", "x" }, "H", "^", { desc = "Go to start line" })
map({ "n", "x" }, "L", "g_", { desc = "Go to end line" })

map("n", "<C-q>", ":qa<CR>", { silent = true, desc = "Quite" })
map("n", "<C-s>", ":w!<CR>", { silent = true, desc = "Save" })

map("n", "<F10>", "<cmd>set spell!<cr>", { desc = "Toggle Spell" })

map("n", "+", "<C-a>", { desc = "Increment" })
map("n", "-", "<C-x>", { desc = "Decrement" })

map("n", "dw", 'vb"_d', { desc = "Delete a word backwards" })

map("n", "<C-a>", "gg<S-v>G", { desc = "Select All" })

map("n", "\\", ":vsplit<Return><C-w>w", { silent = true, desc = "Split Window" })

map("x", "<S-Tab>", "<gv", { desc = "Move Indent Forward" })
map("x", "<Tab>", ">gv|", { desc = "Move Indent Back" })

map("n", "<C-j>", ":wincmd h<CR>", { silent = true, desc = "Focus Right" })
map("n", "<C-k>", ":wincmd l<CR>", { silent = true, desc = "Focus Left" })
map("n", "<C-l>", ":wincmd j<CR>", { silent = true, desc = "Focus Bottom" })
map("n", "<C-;>", ":wincmd k<CR>", { silent = true, desc = "Focus Top" })

-- Change text without putting it into the vim register,
map("n", "c", '"_c')
map("n", "C", '"_C')
map("n", "cc", '"_cc')
map("x", "c", '"_c')


--Tree
map("n", "<C-n>", ":NvimTreeToggle<CR>", { silent = true })

--Tabs
map("n", "<Tab>", ":BufferLineCycleNext<CR>", { silent = true })
map("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { silent = true })
map("n", "<leader>x", ":BufferLinePickClose<CR>", { silent = true })
map("n", "<leader>b", ":BufferLinePick<CR>", { silent = true })

--Trouble
map("n", "<leader>d", ":Trouble<CR>", { silent = true })




