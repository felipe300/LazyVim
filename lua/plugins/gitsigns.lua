return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup()
    local keymap = vim.keymap

    keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<cr>", { desc = "Show changes in line" })
    keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<cr>", { desc = "Blame" })
  end,
}
