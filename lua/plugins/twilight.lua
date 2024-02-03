return {
  "folke/twilight.nvim",
  opts = {
    cmd = { "Twilight", "TwilightEnable", "TwilightDisable" },
  },
  config = function()
    local keymap = vim.keymap
    keymap.set("n", "<leader>tp", ":PencilHard<cr> | :Twilight<cr>", { desc = "Twilight + Pencil" })
    keymap.set("n", "<leader>te", ":TwilightEnable<cr>", { noremap = true, desc = "Twilight Enable" })
    keymap.set("n", "<leader>td", ":TwilightDisable<cr>", { noremap = true, desc = "Twilight Disable" })
  end,
}
