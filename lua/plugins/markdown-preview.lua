return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  ft = { "markdown" },
  build = function()
    vim.fn["mkdp#util#install"]()
  end,
  config = function()
    local keymap = vim.keymap
    keymap.set("n", "<leader>mp", ":MarkdownPreview<cr>", { buffer = 0, noremap = true, desc = "Markdown Preview" })
    keymap.set(
      "n",
      "<leader>ms",
      ":MarkdownPreviewStop<cr>",
      { buffer = 0, noremap = true, desc = "Markdown Preview Stop" }
    )
    keymap.set(
      "n",
      "<leader>mt",
      ":MarkdownPreviewToggle<cr>",
      { buffer = 0, noremap = true, desc = "Markdown Preview Toggle" }
    )
  end,
}
