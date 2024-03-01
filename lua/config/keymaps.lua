local key = vim.keymap

key.set("n", "<leader>sx", require("telescope.builtin").resume, { noremap = true, silent = true, desc = "Resume" })
key.set("n", "Y", "y$", { desc = "Yank to the end of line" })
key.set("n", "<leader>Y", "<cmd>%y<cr>", { desc = "Yank to thr whole file" })
key.set("n", "x", '"_x', { desc = "Cut out single char & send it to unmaped register" })
