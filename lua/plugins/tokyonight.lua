return {
  "folke/tokyonight.nvim",
  lazy = true,
  priority = 1000,
  opts = {
    style = "storm",
    transparent = true,
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
    sidebars = { "qf", "help" },
  },
  require("notify").setup({
    background_colour = "#000000",
  }),
}
