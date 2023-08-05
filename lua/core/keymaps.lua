vim.keymap.set("n", "<C-s>", ":w<cr>", { desc = "save file" })

vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { desc = "toggle neotree" })

vim.keymap.set("n", "<leader>lf", function()
	vim.lsp.buf.format()
end, { desc = "format buffer" })

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "help tags" })
vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "recent files" })
vim.keymap.set("n", "<leader>fs", builtin.current_buffer_fuzzy_find, { desc = "search current buffer" })

vim.keymap.set("n", "<S-l>", ":bnext<CR>", {silent=true})
vim.keymap.set("n", "<S-h>", ":bprevious<CR>", {silent=true})

vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

vim.keymap.set("n", "<A-j>", "<Esc>:m .+1<CR>==gi", {silent=true})
vim.keymap.set("n", "<A-k>", "<Esc>:m .-2<CR>==gi", {silent=true})

vim.keymap.set("v", "<A-j>", ":m .+1<CR>==", {silent=true})
vim.keymap.set("v", "<A-k>", ":m .-2<CR>==", {silent=true})

--vim.keymap.set("x", "J", ":move '>+1<CR>gv-gv", {silent=true})
--vim.keymap.set("x", "K", ":move '<-2<CR>gv-gv", {silent=true})
vim.keymap.set("x", "<A-j>", ":move '>+1<CR>gv-gv", {silent=true})
vim.keymap.set("x", "<A-k>", ":move '<-2<CR>gv-gv", {silent=true})

