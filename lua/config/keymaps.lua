local key = vim.keymap

key.set("n", "<leader>sx", require("telescope.builtin").resume, { noremap = true, silent = true, desc = "Resume" })
key.set("n", "Y", "y$", { desc = "Yank to the end of line" })
key.set("n", "<leader>Y", "<cmd>%y<cr>", { desc = "Yank to the whole file" })
key.set("n", "x", '"_x', { desc = "Cut out single char & send it to unmaped register" })

key.set("v", "J", ":m '>+1<CR>gv=gv")
key.set("v", "K", ":m '<-2<CR>gv=gv")
