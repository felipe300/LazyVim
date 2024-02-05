return {
  "folke/twilight.nvim",
  opts = {
    cmd = { "Twilight", "TwilightEnable", "TwilightDisable" },
  },
  config = function()
    local keymap = vim.keymap
    keymap.set("n", "<leader>uP", ":PencilHard<cr> | :Twilight<cr>", { desc = "Twilight + Pencil" })
  end,
}
