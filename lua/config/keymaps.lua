local key = vim.keymap

-- Disable arrow keys in normal mode
key.set("n", "<left>", '<CMD>echo "Use h to move!!"<CR>')
key.set("n", "<right>", '<CMD>echo "Use l to move!!"<CR>')
key.set("n", "<up>", '<CMD>echo "Use k to move!!"<CR>')
key.set("n", "<down>", '<CMD>echo "Use j to move!!"<CR>')

-- Exit insert mode without hitting Esc
key.set("i", "jj", "<Esc>", { desc = "Esc" })

key.set("n", "Y", "y$", { desc = "Yank to the end of line" })
key.set("n", "<leader>D", "<cmd>%d<cr>", { desc = "Delete to the whole file" })
key.set("n", "<leader>Y", "<cmd>%y<cr>", { desc = "Yank to the whole file" })
key.set("n", "x", '"_x', { desc = "Cut out single char & send it to unmaped register" })

-- Move line or block up&down
key.set("v", "J", ":m '>+1<CR>gv=gv")
key.set("v", "K", ":m '<-2<CR>gv=gv")

-- telescope.lua
key.set("n", "<leader>sx", require("telescope.builtin").resume, { noremap = true, silent = true, desc = "Resume" })

-- oil.lua
key.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
